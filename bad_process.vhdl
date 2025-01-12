```vhdl
ENTITY bad_process IS
  PORT ( clk : IN  STD_LOGIC; 
         data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
         data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY bad_process;

ARCHITECTURE behavioral OF bad_process IS
BEGIN
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN 
      data_out <= data_in;  -- Problem here: Missing sensitivity to data_in
    END IF;
  END PROCESS;
END ARCHITECTURE behavioral;
```