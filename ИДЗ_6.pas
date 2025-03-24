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
  shops: array of string;
  products: array of string;


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
















begin
  
  read_file('shops.txt', shops);
  read_file('products.txt', products);

  writeln(shops);
  writeln(products);
  
end.