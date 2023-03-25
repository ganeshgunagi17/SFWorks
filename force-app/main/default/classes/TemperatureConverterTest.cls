@isTest
public class TemperatureConverterTest {

    @isTest static void TestWarmTemp(){
        Decimal celsius=TemperatureConverter.FahrenhietToCelsius(70);
        System.assertEquals(21.11, celsius);
    }
    
    @isTest static void BoilingPoint(){
        Decimal celsius=TemperatureConverter.FahrenhietToCelsius(200);
        System.assertEquals(0, celsius, 'Invalid');
    }
}