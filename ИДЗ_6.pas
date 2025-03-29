program LAB_6_Records;


type
    shop = record
        name: string;
        products: array of string;
    end;


type
    product = record
        name: string;
        availability: boolean;
    
    end;

var
    shops: array of shop;
    products: array of product;
    test_shops: array of string;
    test_products: array of string;
    i, j: integer;

procedure read_file(file_name: string; var arr: array of string);
var
    f: text;
    line: string;
    count: integer;
begin
    count := 0;
    assign(f, file_name);
    reset(f);
    while not Eof(f) do
    begin
        readln(f, line);
        count := count + 1;
        setlength(arr, count);
        arr[count - 1] := line;
    end;
    close(f); 
end;

procedure linker;
var
    product_i, shop_i: integer;
    i, j: integer;
begin
    randomize;
    for i := 0 to high(products) do
        products[i].availability := False;
  
    for i := 0 to high(shops) do
    begin
        setlength(shops[i].products, 1 + random(5));
        
        for j := 0 to high(shops[i].products) do
        begin
            product_i := random(length(test_products));
            shops[i].products[j] := test_products[product_i];
            products[product_i].availability := True;
        end;
    end;
end;





begin
    
    read_file('shops.txt', test_shops);
    read_file('products.txt', test_products);
    
    setlength(shops, length(test_shops));
    for i := 0 to high(test_shops) do
        shops[i].name := test_shops[i];
    
    setlength(products, length(test_products));
    for i := 0 to high(test_products) do
        products[i].name := test_products[i];
    
    linker;
    
end.