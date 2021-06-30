package com.emergentes.dao;

import com.emergentes.modelo.ListaTodos;
import java.util.List;

public interface ListaTodoDAO {
    public List<ListaTodos> getAll() throws Exception;
}
