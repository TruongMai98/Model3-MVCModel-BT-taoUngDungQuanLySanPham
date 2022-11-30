package service;

import model.Product;

import java.beans.Customizer;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class ProductDB implements IProductDBTest{
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "sua chua", 90000, "mat hang up lanh", "vina milk"));
        products.add(new Product(2, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(3, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(4, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(5, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(6, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(1, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(2, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(3, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(4, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(5, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(6, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(1, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(2, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(3, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(4, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(5, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(6, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(1, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(2, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(3, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(4, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(5, "sua chua", 10000, "mat hang up lanh", "vina milk"));
        products.add(new Product(6, "sua chua", 10000, "mat hang up lanh", "vina milk"));
    }

    @Override
    public void create(Product product) {
        products.add(product);
    }

    @Override
    public List<Product> read() {
        return products;
    }

    @Override
    public boolean update(int id, Product newProduct) {
        Product p = searchByProductId(id);
        if (p != null) {
            p.setProductName(newProduct.getProductName());
            p.setProductPrice(newProduct.getProductPrice());
            p.setProductDescription(newProduct.getProductDescription());
            p.setManufacturer(newProduct.getManufacturer());
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        Product p = searchByProductId(id);
        if (p != null) {
            products.remove(p);
        }
        return false;
    }

    @Override
    public Product searchByProductId(int id) {
        for (Product p : products) {
            if (p.getProductId() == id) {
                return p;
            }
        }
        return null;
    }

    @Override
    public List<Product> searchByProductNameOrId(String object) {
        List<Product> newProduct = new ArrayList<>();
        for (Product p : products) {
            String name = p.getProductName();
            String id = String.valueOf(p.getProductId());
            if ((name.toLowerCase().contains(object.toLowerCase())) || (id.equals(object))) {
                newProduct.add(p);
            }
        }
        return newProduct;
    }
}
