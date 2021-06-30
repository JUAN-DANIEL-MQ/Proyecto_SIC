package com.emergentes.dao;

import com.emergentes.modelo.Correspondencia;
import java.util.List;
public interface CorrespondenciaDAO {
    public void insert(Correspondencia correspondencia) throws Exception;
    public void update(Correspondencia correspondencia) throws Exception;
    public void delete(int id) throws Exception;
    public Correspondencia getById(int id) throws Exception;
    public List<Correspondencia> getAll(int id) throws Exception; 
    public List<Correspondencia> getAllD() throws Exception; 
}
