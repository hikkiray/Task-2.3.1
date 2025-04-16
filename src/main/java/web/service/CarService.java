package web.service;

import org.springframework.stereotype.Service;
import web.model.Car;

import java.util.ArrayList;
import java.util.List;

@Service
public class CarService implements CarServiceInterface {
    private List<Car> cars;
    public CarService() {
        cars = new ArrayList<Car>();
        cars.add(new Car("Toyota Camry", 50, "Black"));
        cars.add(new Car("BMW X5", 30, "White"));
        cars.add(new Car("Audi A4", 45, "Red"));
        cars.add(new Car("Mercedes S-class", 60, "Silver"));
        cars.add(new Car("Honda Accord", 40, "Blue"));
    }
    @Override
    public List<Car> getCars(int count) {
        if (count >= 5) {
            return cars;
        }
        return cars.subList(0, count);
    }

}
