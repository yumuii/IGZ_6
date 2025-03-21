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
  products: array of product;


begin
  
end.