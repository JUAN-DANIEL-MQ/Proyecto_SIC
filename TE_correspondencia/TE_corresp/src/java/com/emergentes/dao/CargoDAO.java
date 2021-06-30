package com.emergentes.dao;

import com.emergentes.modelo.Cargo;
import java.util.List;

public interface CargoDAO {
    public List<Cargo> getAll() throws Exception;
}
