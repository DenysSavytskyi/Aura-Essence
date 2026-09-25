CREATE TABLE perfume(
    product VARCHAR(50),
    brand VARCHAR(30),
    description VARCHAR(100),
    gender VARCHAR(10),
    volume SMALLINT,
    release_date SMALLINT,
    price DECIMAL(6,2),
    availability BOOLEAN
);

INSERT INTO perfume(product,brand,description,gender,volume,release_date,price,availability)
VALUES
  ('Black Phantom','By Kilian','sweet, warm spicy, caramel, chocolate, coffee','unisex',100,2017,440.00,TRUE),
  ('Angels Share','By Kilian','warm spicy, woody, sweet, vanilla, cinnamon','unisex',100,2020,330.00,TRUE ),
  ('Fuck*ng Fabulous','TOM FORD','aromatic, leather, vanilla, almond, woody','unisex',100,2017,480.00,TRUE),
  ('Homme Intense','DIOR','iris, woody, powdery, earthy, aromatic','men',100,2011,130.50,TRUE),
  ('XJ 1861 Naxos','Xerjoff','sweet, honey, vanilla, tobacco, lavender','unisex',100,2015,217.60,FALSE),
  ('Althaïr','Parfums de Marly','sweet, vanilla, warm spicy, cinnamon, aromatic','men',100,2023,270.00,TRUE),
  ('Aventus','Creed','fruity, sweet, woody, leather, citrus','men',100,2010,330.00,FALSE),
  ('By the Fireplace','Maison Martin Margiela','woody, vanilla, balsamic, warm spicy, amber','unisex',30,2015,145.40,FALSE),
  ('Imagination','Louis Vuitton','citrus, fresh spicy, green, fresh, aromatic','men',100,2021,300.00,TRUE),
  ('Terroni','Orto Parisi','woody, amber, leather, smoky, earthy','unisex',50,2017,155.00,FALSE),
  ('Stronger With You Absolutely','Giorgio Armani','vanilla, woody, balsamic, rum, aromatic','men',100,2021,75.00,TRUE),
  ('Black Vanilla','Mancera','vanilla, powdery, fruity, sweet, violet','unisex',120,2017,87.00,TRUE),
  ('Vanilla Cake','Montale','sweet, vanilla, lactonic, powdery, caramel','unisex',50,2018,70.00,FALSE)