var faker = require('faker');


function fakeProduct(num) {
    
    var count=0;

    while(count<num) {
       
        var randomProduct = faker.commerce.productName(); 
        var randomPrice = faker.commerce.price(); 
        console.log("Product: "+randomProduct+ "\nPrice:   $" + 
        randomPrice+ "\n");
        
        count++;
    }

}

fakeProduct(3);