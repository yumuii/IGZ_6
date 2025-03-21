program LAB_6_Records;


type
  shop = record
    name: string;
  end;


type
  product = record
    name: string;
    shops: array of shop;
  end;

var
  file_shops: text;
  file_products: text;
  products: array of product;
  n, i: integer;
  line_1, line_2: string;


begin
  //сначала поработаю с файлами shops и products
  
  assign(file_shops, 'shops.txt');
  reset(file_shops);
  while not Eof(file_shops) do
  begin
    readln(file_shops, line_1);
    writeln(line_1);
  end;
  close(file_shops); 
  
  
  assign(file_products, 'products.txt');
  reset(file_products);
  while not Eof(file_products) do
  begin
    readln(file_products, line_2);
    writeln(line_2);
  end;
  
  //надо записать данные файлов в массивы
  
  
  //writeln('Введите количество продуктов: '); readln(n);
  //SetLength(products,n);
  
end.