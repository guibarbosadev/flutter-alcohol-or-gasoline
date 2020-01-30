import 'package:alcohol_or_gasoline/enum/fuel_type.dart';
import 'package:flutter/foundation.dart';

class Fuel {
    /// Effectiveness is based on how much it yields more than gasoline.
    /// Based on that, gasoline effectivess is 1
    double effectiveness;
    FuelType fuelType;
    double price;
    
    Fuel({
        @required this.effectiveness,
        @required this.fuelType,
        @required this.price
    });


    static Fuel mostWorthIt(Fuel firstFuel, Fuel secondFuel) {
        print('firstPrice  ${firstFuel.price}');
        print('secondPrice  ${secondFuel.price}');
        double dollarPerDollar1 = firstFuel.price / firstFuel.effectiveness;
        double dollarPerDollar2 = secondFuel.price / secondFuel.effectiveness;

        Fuel mostWorthItfuel = dollarPerDollar1 <= dollarPerDollar2 ? firstFuel : secondFuel;

        
        return mostWorthItfuel;
    }

    void setPrice(double price) {
        this.price = price;
    }
}