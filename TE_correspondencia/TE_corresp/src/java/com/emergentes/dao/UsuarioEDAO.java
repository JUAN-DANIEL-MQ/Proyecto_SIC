package com.emergentes.dao;

import com.emergentes.modelo.UsuarioE;
import java.util.List;

public interface UsuarioEDAO {
    
    public void insert(UsuarioE usuarioe) throws Exception;
    public void update(UsuarioE usuarioe) throws Exception;
    public void delete(int id) throws Exception;
    public UsuarioE getById(int id) throws Exception;
    public List<UsuarioE> getAll() throws Exception;
    
}
