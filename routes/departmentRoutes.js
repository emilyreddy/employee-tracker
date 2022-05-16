const express = require('express');
const router = express.Router();
const db = require('../../db/connection');

router.get('/departments', (req, res)=>{
    const sql = `SELECT * FROM department`;
    db.query(sql, (err, rows)=>{
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.json({
            message: 'success',
            data: rows
        });
    });
});

router.get('/department/:id', (req, res) => {
    const sql = `SELECT * FROM department WHERE id = ?`;
    const params = [req.params.id];
    db.query(sql, params, (err, row) => {
      if (err) {
        res.status(400).json({ error: err.message });
        return;
      }
      res.json({
        message: 'success',
        data: row
      });
    });
  });

  router.put('/department/:id', (req, res)=>{
    const sql = `UPDATE department SET name WHERE id = ?
            WHERE id = ?`
    const params = [req.body.department, req.params.id];
    db.query(sql, params, (err, result)=>{
        if (err) {
            res.status(400).json({ error: err.message });
        } else if (!result.affectedRows) {
            res.json({
                message: `Department not found`
            });
        } else {
            res.json({
                message: 'success',
                data: req.body,
                changes: result.affectedRows
            });
        }
    });
});

router.delete('/department/:id', (req, res) => {
    const sql = `DELETE FROM department WHERE id = ?`;
    const params = [req.params.id];
    db.query(sql, params, (err, result) => {
        if (err) {
        res.status(400).json({ error: res.message });
        } else if (!result.affectedRows) {
        res.json({
            message: 'department not found'
        });
        } else {
        res.json({
            message: 'deleted',
            changes: result.affectedRows,
            id: req.params.id
        });
        }
    });
});

module.exports = router;