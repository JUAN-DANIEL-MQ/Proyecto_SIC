package com.emergentes.dao;

import com.emergentes.modelo.Accion;
import java.util.List;

public interface AccionDAO {
    public List<Accion> getAll() throws Exception;
}
