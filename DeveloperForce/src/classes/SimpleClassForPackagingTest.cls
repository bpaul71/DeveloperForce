@IsTest public with sharing class SimpleClassForPackagingTest {
  @IsTest(SeeAllData=true) public static void testFoo() {
    SimpleClassForPackaging a = new SimpleClassForPackaging();
    a.foo();
  }
}