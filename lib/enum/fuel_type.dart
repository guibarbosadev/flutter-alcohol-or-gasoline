enum FuelType {
    Gasoline,
    Alcohol
}

String getFuelTypeName(FuelType fuelType) {
    final runTimeType = fuelType.runtimeType;
    String nameWithPrefix = fuelType.toString();
    String name = nameWithPrefix.replaceAll('${runTimeType.toString()}.', '');

    return name;
}