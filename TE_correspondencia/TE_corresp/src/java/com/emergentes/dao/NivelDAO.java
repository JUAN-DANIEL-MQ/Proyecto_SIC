package com.emergentes.dao;

import com.emergentes.modelo.NivelCuenta;
import java.util.List;

public interface NivelDAO {
    public List<NivelCuenta> getAll() throws Exception;
}
