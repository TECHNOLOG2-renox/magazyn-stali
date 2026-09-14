BEGIN;

-- Dodaj kolumny dla wymiarów Blachy / Profilu
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_dlugosc NUMERIC;
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_szerokosc NUMERIC;
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_grubosc NUMERIC;
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_wysokosc NUMERIC;

-- Dodaj kolumny dla wymiarów Pręta/Wałka
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_srednica NUMERIC;

-- Dodaj kolumny dla wymiarów Rury
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_srednicy_zew NUMERIC;
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_grubosc_scianki NUMERIC;

-- Dodaj kolumny dla wymiarów Płaskownika/Kątownika
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_a NUMERIC;
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar_b NUMERIC;

-- Dodaj kolumnę dla wagi (typ "Inne")
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS waga_kg NUMERIC;

-- Dodaj kolumnę dla łącznego wymiaru jako tekst
ALTER TABLE materialy ADD COLUMN IF NOT EXISTS wymiar VARCHAR;

COMMIT;
