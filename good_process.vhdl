```vhdl
ENTITY good_process IS
  PORT ( clk : IN  STD_LOGIC; 
         data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
         data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY good_process;

ARCHITECTURE behavioral OF good_process IS
BEGIN
  PROCESS (clk, data_in) -- Correctly includes data_in in sensitivity list
  BEGIN
    IF clk'EVENT AND clk = '1' THEN 
      data_out <= data_in; 
    END IF;
  END PROCESS;
END ARCHITECTURE behavioral;
```