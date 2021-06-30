package com.emergentes.dao;

import com.emergentes.modelo.Cuenta;
import java.util.List;

public interface CuentaDAO {
    public void insert(Cuenta cuenta) throws Exception;
    public void update(Cuenta cuenta) throws Exception;
    public void delete(int id) throws Exception;
    public Cuenta getById(int id) throws Exception;
    public List<Cuenta> getAll() throws Exception;
}
