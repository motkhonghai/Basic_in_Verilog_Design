# Hướng Dẫn Mô Phỏng Verilog với Icarus Verilog & GTKWave

## 1. Chuẩn Bị File

- **Mô tả phần cứng (.v):**
  - Viết file mô tả HDL, ví dụ: `full_adder.v`, `half_adder.v`
- **Testbench (tb_*.v):**
  - Viết file testbench cho từng module, ví dụ: `tb_full_adder.v`
  - Trong file testbench, cần có:
    ```verilog
    $dumpfile("<vcd_name>.vcd");          // Tên file waveform sẽ sinh ra
    $dumpvars(0, <testbench_name>);       // <testbench_name> là tên module testbench
    ```
    **Ví dụ:**
    ```verilog
    $dumpfile("wave_form.vcd");
    $dumpvars(0, tb_full_adder);
    ```

---

## 2. Biên Dịch & Mô Phỏng

### Biên dịch Verilog với iverilog:

  - Biên dịch:
    ```bash
    iverilog -o <file_name_output> <file_name>.v tb_<file_name>.v
    ```
    **Ví dụ:**
    ```bash
    iverilog -o sim full_adder.v half_adder.v tb_full_adder.v
    ```
  - Chạy mô phỏng với vvp:
    ```bash
    vvp <file_name_output>
    ```
    **Ví dụ:**
    ```bash
    vvp sim
    ```
  - Xem Sóng với GTKWave:
    ```bash
    gtkwave <vcd_name>.vcd
    ```
    **Ví dụ:**
    ```bash
    gtkwave wave_form.vcd
    ```
