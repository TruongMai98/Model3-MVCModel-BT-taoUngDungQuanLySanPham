package service;

import model.Product;

import java.util.List;

public interface IProductDBTest {
    void create(Product product);
    List<Product> read();
    boolean update(int id, Product product);
    boolean delete(int id);
    Product searchByProductId(int id);
    List<Product> searchByProductName(String name);
}
