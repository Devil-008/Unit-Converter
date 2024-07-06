//km to m

import '../pages/next_page1.dart';

//  conversion funtion for length

double kilometersToMeters(double kilometers) {
  return kilometers * 1000;
}

// Convert Meters to Kilometers
double metersToKilometers(double meters) {
  return meters / 1000;
}

// Convert Meters to Feet
double metersToFoot(double meters) {
  return meters * 3.28084;
}

// Convert Feet to Meters
double footToMeters(double Foot) {
  return Foot / 3.28084;
}

// Convert Kilometers to Feet
double kilometersToFoot(double kilometers) {
  return kilometers * 3280.84;
}

// Convert Feet to Kilometers
double footToKilometers(double Foot) {
  return Foot / 3280.84;
}

void lConverter() {
  if (unitConveterConroller.fromUnit.value == 'Kilometre' &&
      unitConveterConroller.toUnit.value == 'Metre') {
    unitConveterConroller.result.value = kilometersToMeters(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("km = m");
  } else if (unitConveterConroller.fromUnit.value == 'Metre' &&
      unitConveterConroller.toUnit.value == 'Kilometre') {
    unitConveterConroller.result.value = metersToKilometers(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("m = km");
  } else if (unitConveterConroller.fromUnit.value == 'Metre' &&
      unitConveterConroller.toUnit.value == 'Foot') {
    unitConveterConroller.result.value = metersToFoot(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("m = f");
  } else if (unitConveterConroller.fromUnit.value == 'Foot' &&
      unitConveterConroller.toUnit.value == 'Metre') {
    unitConveterConroller.result.value = footToMeters(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("f = m");
  } else if (unitConveterConroller.fromUnit.value == 'Kilometre' &&
      unitConveterConroller.toUnit.value == 'Foot') {
    unitConveterConroller.result.value = kilometersToFoot(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("km = f");
  } else if (unitConveterConroller.fromUnit.value == 'Foot' &&
      unitConveterConroller.toUnit.value == 'Kilometre') {
    unitConveterConroller.result.value = footToKilometers(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("f = km");
  }
}

// Conversion functions for Temperature
double celsiusToKelvin(double Celsius) => Celsius + 273.15;
double celsiusToFahrenheit(double Celsius) => (Celsius * 9 / 5) + 32;
double kelvinToCelsius(double Kelvin) => Kelvin - 273.15;
double kelvinToFahrenheit(double Kelvin) => (Kelvin - 273.15) * 9 / 5 + 32;
double fahrenheitToCelsius(double Fahrenheit) => (Fahrenheit - 32) * 5 / 9;
double fahrenheitToKelvin(double Fahrenheit) =>
    (Fahrenheit - 32) * 5 / 9 + 273.15;

void tConverter() {
  if (unitConveterConroller.fromUnit.value == 'Celsius' &&
      unitConveterConroller.toUnit.value == 'Metre') {
    unitConveterConroller.result.value = celsiusToKelvin(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("c --> k");
  } else if (unitConveterConroller.fromUnit.value == 'Celsius' &&
      unitConveterConroller.toUnit.value == 'Fahrenheit') {
    unitConveterConroller.result.value = celsiusToFahrenheit(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("c --> f");
  } else if (unitConveterConroller.fromUnit.value == 'Kelvin' &&
      unitConveterConroller.toUnit.value == 'Celsius') {
    unitConveterConroller.result.value = kelvinToCelsius(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("k --> c");
  } else if (unitConveterConroller.fromUnit.value == 'Kelvin' &&
      unitConveterConroller.toUnit.value == 'Fahrenheit') {
    unitConveterConroller.result.value = kelvinToFahrenheit(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("k --> f");
  } else if (unitConveterConroller.fromUnit.value == 'Fahrenheit' &&
      unitConveterConroller.toUnit.value == 'Celsius') {
    unitConveterConroller.result.value = fahrenheitToCelsius(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("f --> c");
  } else if (unitConveterConroller.fromUnit.value == 'Fahrenheit' &&
      unitConveterConroller.toUnit.value == 'Kelvin') {
    unitConveterConroller.result.value = fahrenheitToKelvin(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("f --> k");
  }
}

// Conversion functions for Mass

// Convert Pounds to Kilograms
double PoundsToKilograms(double Pounds) {
  return Pounds * 0.453592;
}

// Convert Pounds to Grams
double PoundsToGrams(double Pounds) {
  return Pounds * 453.592;
}

// Convert Kilograms to Grams
double kilogramsToGrams(double kilograms) {
  return kilograms * 1000;
}

// Convert Kilograms to Pounds
double kilogramsToPounds(double kilograms) {
  return kilograms * 2.20462;
}

// Convert Grams to Kilograms
double gramsToKilograms(double grams) {
  return grams / 1000;
}

// Convert Grams to Pounds
double gramsToPounds(double grams) {
  return grams * 0.00220462;
}

void mConverter() {
  if (unitConveterConroller.fromUnit.value == 'Pounds' &&
      unitConveterConroller.toUnit.value == 'Kilograms') {
    unitConveterConroller.result.value = PoundsToKilograms(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("p --> k");
  } else if (unitConveterConroller.fromUnit.value == 'Pounds' &&
      unitConveterConroller.toUnit.value == 'Grams') {
    unitConveterConroller.result.value = PoundsToGrams(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("p --> g");
  } else if (unitConveterConroller.fromUnit.value == 'Kilograms' &&
      unitConveterConroller.toUnit.value == 'Grams') {
    unitConveterConroller.result.value = kilogramsToGrams(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("k --> g");
  } else if (unitConveterConroller.fromUnit.value == 'Kilograms' &&
      unitConveterConroller.toUnit.value == 'Pounds') {
    unitConveterConroller.result.value = kilogramsToPounds(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("k --> p");
  } else if (unitConveterConroller.fromUnit.value == 'Grams' &&
      unitConveterConroller.toUnit.value == 'Kilograms') {
    unitConveterConroller.result.value = gramsToKilograms(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("g --> k");
  } else if (unitConveterConroller.fromUnit.value == 'Grams' &&
      unitConveterConroller.toUnit.value == 'Pounds') {
    unitConveterConroller.result.value = gramsToPounds(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("g --> p");
  }
}

// conversion for SPeed
// Convert Meters per Second to Kilometers per Hour
double mphToKmph(double Mph) {
  return Mph * 3.6;
}

// Convert  Kilometers per Hour to Meters per Second
double kmphToMps(double kmph) {
  return kmph * 0.27778;
}

void sConverter() {
  if (unitConveterConroller.fromUnit.value == 'Mph' &&
      unitConveterConroller.toUnit.value == 'Kmph') {
    unitConveterConroller.result.value = mphToKmph(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("m/s --> km/s");
  } else if (unitConveterConroller.fromUnit.value == 'Kmph' &&
      unitConveterConroller.toUnit.value == 'Mph') {
    unitConveterConroller.result.value = kmphToMps(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("km/s -->m/s");
  }
}

// conversion for frequency

double hzToKhz(double Hertz) {
  return Hertz / 1000;
}

double khzToHz(double Kilohertz) {
  return Kilohertz * 1000;
}

void fConverter() {
  if (unitConveterConroller.fromUnit.value == 'Hertz' &&
      unitConveterConroller.toUnit.value == 'Kilohertz') {
    unitConveterConroller.result.value =
        hzToKhz(double.parse(unitConveterConroller.unitValue.text.toString()));
    print("hz --> khz");
  } else if (unitConveterConroller.fromUnit.value == 'Kilohertz' &&
      unitConveterConroller.toUnit.value == 'Hertz') {
    unitConveterConroller.result.value =
        khzToHz(double.parse(unitConveterConroller.unitValue.text.toString()));
    print("khz --> hz");
  }
}

//  conversion of  area
// Convert hectares to acres
double hectaresToAcres(double Hectares) {
  return Hectares * 2.47105381;
}

// Convert acres to hectares
double acresToHectares(double Acres) {
  return Acres * 0.404685642;
}

// Convert square meters to acres
double sqmToAcres(double Sqm) {
  return Sqm / 4046.85642;
}

// Convert acres to square meters
double acresToSqm(double Acres) {
  return Acres * 4046.85642;
}

void aConverter() {
  if (unitConveterConroller.fromUnit.value == 'hectares' &&
      unitConveterConroller.toUnit.value == 'acres') {
    unitConveterConroller.result.value = hectaresToAcres(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("he --> ac");
  } else if (unitConveterConroller.fromUnit.value == 'acres' &&
      unitConveterConroller.toUnit.value == 'hectares') {
    unitConveterConroller.result.value = acresToHectares(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("ac --> he");
  } else if (unitConveterConroller.fromUnit.value == 'sqm' &&
      unitConveterConroller.toUnit.value == 'acres') {
    unitConveterConroller.result.value = sqmToAcres(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("sqm --> ac ");
  } else if (unitConveterConroller.fromUnit.value == 'acres' &&
      unitConveterConroller.toUnit.value == 'sqm') {
    unitConveterConroller.result.value = acresToSqm(
        double.parse(unitConveterConroller.unitValue.text.toString()));
    print("ac --> sqm");
  }
}
