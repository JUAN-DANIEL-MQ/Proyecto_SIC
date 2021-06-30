package com.emergentes.dao;

import com.emergentes.modelo.Derivacion;
import java.util.List;

public interface DerivacionDAO {
    public void insert(Derivacion derivacion) throws Exception;
    public void update(Derivacion derivacion) throws Exception;
    public void delete(int id) throws Exception;
    public Derivacion getById(int id) throws Exception;
    public List<Derivacion> getAll() throws Exception;
    public List<Derivacion> getAllD(int id) throws Exception;
}
