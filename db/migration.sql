CREATE TABLE products(
  id serial NOT NULL PRIMARY KEY,
  name varchar(80) NOT NULL,
  version integer NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);

CREATE TABLE heros(
  id serial NOT NULL PRIMARY KEY,
  product_id bigint NOT NULL,
  name varchar(80) NOT NULL,
  stand varchar(80) NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);

CREATE TABLE enemies(
  id serial NOT NULL PRIMARY KEY,
  product_id bigint NOT NULL,
  name varchar(80) NOT NULL,
  stand varchar(80) NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  updated_at timestamp with time zone NOT NULL DEFAULT now()
);

CREATE INDEX idx_heros_product_id ON public.heros USING btree (product_id);
ALTER TABLE ONLY public.heros
    ADD CONSTRAINT fk_heros_product_id FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
CREATE INDEX idx_enemies_product_id ON public.enemies USING btree (product_id);
ALTER TABLE ONLY public.enemies
    ADD CONSTRAINT idx_enemies_product_id FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
