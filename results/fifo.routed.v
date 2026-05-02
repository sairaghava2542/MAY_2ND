// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/2/2026 at 2:48:1
// Library Name: fifo.nlib
// Block Name: fifo
// User Label: 
// Write Command: write_verilog ./fifo.routed.v
module fifo ( clk , rst_n , wr_en , rd_en , data_in , data_out , full , 
    empty ) ;
input  clk ;
input  rst_n ;
input  wr_en ;
input  rd_en ;
input  [7:0] data_in ;
output [7:0] data_out ;
output full ;
output empty ;

wire [4:0] wr_ptr ;
wire [4:0] rd_ptr ;

DFFX1_RVT \mem_reg[15][1] ( .D ( n298 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[15][1] ) ) ;
DFFX1_RVT \mem_reg[15][2] ( .D ( n297 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[15][2] ) ) ;
DFFX1_RVT \mem_reg[15][3] ( .D ( n296 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[15][3] ) ) ;
DFFX1_RVT \mem_reg[15][4] ( .D ( n295 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[15][4] ) ) ;
DFFX1_RVT \mem_reg[15][5] ( .D ( n294 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[15][5] ) ) ;
DFFX1_RVT \mem_reg[15][6] ( .D ( n293 ) , .CLK ( ZCTSNET_810 ) , 
    .Q ( \mem[15][6] ) ) ;
DFFX1_RVT \mem_reg[15][7] ( .D ( n292 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[15][7] ) ) ;
DFFX1_RVT \mem_reg[15][0] ( .D ( n291 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[15][0] ) ) ;
DFFX1_RVT \mem_reg[13][0] ( .D ( n282 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[13][0] ) ) ;
DFFX1_RVT \mem_reg[13][1] ( .D ( n281 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[13][1] ) ) ;
DFFX1_RVT \mem_reg[13][2] ( .D ( n280 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[13][2] ) ) ;
DFFX1_RVT \mem_reg[13][3] ( .D ( n279 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[13][3] ) ) ;
DFFX1_RVT \mem_reg[13][4] ( .D ( n278 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[13][4] ) ) ;
DFFX1_RVT \mem_reg[13][5] ( .D ( n277 ) , .CLK ( ZCTSNET_829 ) , 
    .Q ( \mem[13][5] ) ) ;
DFFX1_RVT \mem_reg[13][6] ( .D ( n276 ) , .CLK ( ZCTSNET_829 ) , 
    .Q ( \mem[13][6] ) ) ;
DFFX1_RVT \mem_reg[13][7] ( .D ( ropt_net_1886 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[13][7] ) ) ;
DFFX1_RVT \mem_reg[11][0] ( .D ( n266 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[11][0] ) ) ;
DFFX1_RVT \mem_reg[11][1] ( .D ( ropt_net_1884 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[11][1] ) ) ;
DFFX1_RVT \mem_reg[11][2] ( .D ( n264 ) , .CLK ( cts0 ) , .Q ( \mem[11][2] ) ) ;
DFFX1_RVT \mem_reg[11][3] ( .D ( n263 ) , .CLK ( cts0 ) , .Q ( \mem[11][3] ) ) ;
DFFX1_RVT \mem_reg[11][4] ( .D ( n262 ) , .CLK ( cts0 ) , .Q ( \mem[11][4] ) ) ;
DFFX1_RVT \mem_reg[11][5] ( .D ( n261 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[11][5] ) ) ;
DFFX1_RVT \mem_reg[11][6] ( .D ( n260 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[11][6] ) ) ;
DFFX1_RVT \mem_reg[11][7] ( .D ( n259 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[11][7] ) ) ;
DFFX1_RVT \mem_reg[9][2] ( .D ( n248 ) , .CLK ( cts0 ) , .Q ( \mem[9][2] ) ) ;
DFFX1_RVT \mem_reg[9][3] ( .D ( n247 ) , .CLK ( cts0 ) , .Q ( \mem[9][3] ) ) ;
DFFX1_RVT \mem_reg[9][4] ( .D ( n246 ) , .CLK ( cts0 ) , .Q ( \mem[9][4] ) ) ;
DFFX1_RVT \mem_reg[9][5] ( .D ( n245 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[9][5] ) ) ;
DFFX1_RVT \mem_reg[9][6] ( .D ( n244 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[9][6] ) ) ;
DFFX1_RVT \mem_reg[9][7] ( .D ( n243 ) , .CLK ( ZCTSNET_628 ) , 
    .Q ( \mem[9][7] ) ) ;
DFFX1_RVT \mem_reg[14][0] ( .D ( n290 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[14][0] ) ) ;
DFFX1_RVT \mem_reg[14][1] ( .D ( n289 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[14][1] ) ) ;
DFFX1_RVT \mem_reg[14][4] ( .D ( n286 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[14][4] ) ) ;
DFFX1_RVT \mem_reg[14][5] ( .D ( n285 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[14][5] ) ) ;
DFFX1_RVT \mem_reg[14][6] ( .D ( n284 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[14][6] ) ) ;
DFFX1_RVT \mem_reg[14][7] ( .D ( n283 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[14][7] ) ) ;
DFFX1_RVT \mem_reg[12][5] ( .D ( n274 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[12][5] ) ) ;
DFFX1_RVT \mem_reg[12][6] ( .D ( n273 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[12][6] ) ) ;
DFFX1_RVT \mem_reg[12][7] ( .D ( n272 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[12][7] ) ) ;
DFFX1_RVT \mem_reg[12][0] ( .D ( n271 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[12][0] ) ) ;
DFFX1_RVT \mem_reg[12][1] ( .D ( n270 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[12][1] ) ) ;
DFFX1_RVT \mem_reg[12][2] ( .D ( n269 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[12][2] ) ) ;
DFFX1_RVT \mem_reg[12][3] ( .D ( n268 ) , .CLK ( cts0 ) , .Q ( \mem[12][3] ) ) ;
DFFX1_RVT \mem_reg[12][4] ( .D ( n267 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[12][4] ) ) ;
DFFX1_RVT \mem_reg[10][2] ( .D ( n256 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[10][2] ) ) ;
DFFX1_RVT \mem_reg[10][3] ( .D ( n255 ) , .CLK ( ZCTSNET_628 ) , 
    .Q ( \mem[10][3] ) ) ;
DFFX1_RVT \mem_reg[10][4] ( .D ( n254 ) , .CLK ( cts0 ) , .Q ( \mem[10][4] ) ) ;
DFFX1_RVT \mem_reg[10][5] ( .D ( n253 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[10][5] ) ) ;
DFFX1_RVT \mem_reg[10][6] ( .D ( n252 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[10][6] ) ) ;
DFFX1_RVT \mem_reg[10][7] ( .D ( n251 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[10][7] ) ) ;
DFFX1_RVT \mem_reg[8][0] ( .D ( n242 ) , .CLK ( cts0 ) , .Q ( \mem[8][0] ) ) ;
DFFX1_RVT \mem_reg[8][1] ( .D ( n241 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[8][1] ) ) ;
DFFX1_RVT \mem_reg[8][4] ( .D ( n238 ) , .CLK ( cts0 ) , .Q ( \mem[8][4] ) ) ;
DFFX1_RVT \mem_reg[8][5] ( .D ( n237 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[8][5] ) ) ;
DFFX1_RVT \mem_reg[8][6] ( .D ( n236 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[8][6] ) ) ;
DFFX1_RVT \mem_reg[8][7] ( .D ( n235 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[8][7] ) ) ;
DFFX1_RVT \mem_reg[7][2] ( .D ( n232 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[7][2] ) ) ;
DFFX1_RVT \mem_reg[7][3] ( .D ( n231 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[7][3] ) ) ;
DFFX1_RVT \mem_reg[7][4] ( .D ( n230 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[7][4] ) ) ;
DFFX1_RVT \mem_reg[7][5] ( .D ( n229 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[7][5] ) ) ;
DFFX1_RVT \mem_reg[7][6] ( .D ( n228 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[7][6] ) ) ;
DFFX1_RVT \mem_reg[7][7] ( .D ( n227 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[7][7] ) ) ;
DFFX1_RVT \mem_reg[5][2] ( .D ( n216 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[5][2] ) ) ;
DFFX1_RVT \mem_reg[5][3] ( .D ( n215 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[5][3] ) ) ;
DFFX1_RVT \mem_reg[5][4] ( .D ( n214 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[5][4] ) ) ;
DFFX1_RVT \mem_reg[5][5] ( .D ( n213 ) , .CLK ( ZCTSNET_810 ) , 
    .Q ( \mem[5][5] ) ) ;
DFFX1_RVT \mem_reg[5][6] ( .D ( n212 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[5][6] ) ) ;
DFFX1_RVT \mem_reg[5][7] ( .D ( n211 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[5][7] ) ) ;
DFFX1_RVT \mem_reg[3][0] ( .D ( n202 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[3][0] ) ) ;
DFFX1_RVT \mem_reg[3][1] ( .D ( n201 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[3][1] ) ) ;
DFFX1_RVT \mem_reg[3][2] ( .D ( n200 ) , .CLK ( cts0 ) , .Q ( \mem[3][2] ) ) ;
DFFX1_RVT \mem_reg[3][3] ( .D ( n199 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[3][3] ) ) ;
DFFX1_RVT \mem_reg[3][4] ( .D ( n198 ) , .CLK ( cts0 ) , .Q ( \mem[3][4] ) ) ;
DFFX1_RVT \mem_reg[3][5] ( .D ( n197 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[3][5] ) ) ;
DFFX1_RVT \mem_reg[3][6] ( .D ( n196 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[3][6] ) ) ;
DFFX1_RVT \mem_reg[3][7] ( .D ( n195 ) , .CLK ( ZCTSNET_628 ) , 
    .Q ( \mem[3][7] ) ) ;
DFFX1_RVT \mem_reg[1][0] ( .D ( n186 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[1][0] ) ) ;
DFFX1_RVT \mem_reg[1][1] ( .D ( n185 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[1][1] ) ) ;
DFFX1_RVT \mem_reg[1][2] ( .D ( n184 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[1][2] ) ) ;
DFFX1_RVT \mem_reg[1][3] ( .D ( n183 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[1][3] ) ) ;
DFFX1_RVT \mem_reg[1][4] ( .D ( n182 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[1][4] ) ) ;
DFFX1_RVT \mem_reg[1][5] ( .D ( ropt_net_1883 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[1][5] ) ) ;
DFFX1_RVT \mem_reg[1][6] ( .D ( n180 ) , .CLK ( ZCTSNET_810 ) , 
    .Q ( \mem[1][6] ) ) ;
DFFX1_RVT \mem_reg[1][7] ( .D ( n179 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[1][7] ) ) ;
DFFX1_RVT \mem_reg[6][0] ( .D ( n226 ) , .CLK ( cts0 ) , .Q ( \mem[6][0] ) ) ;
DFFX1_RVT \mem_reg[6][1] ( .D ( n225 ) , .CLK ( cts0 ) , .Q ( \mem[6][1] ) ) ;
DFFX1_RVT \mem_reg[6][2] ( .D ( n224 ) , .CLK ( cts0 ) , .Q ( \mem[6][2] ) ) ;
DFFX1_RVT \mem_reg[6][3] ( .D ( n223 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[6][3] ) ) ;
DFFX1_RVT \mem_reg[6][4] ( .D ( n222 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[6][4] ) ) ;
DFFX1_RVT \mem_reg[6][5] ( .D ( n221 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[6][5] ) ) ;
DFFX1_RVT \mem_reg[6][6] ( .D ( n220 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[6][6] ) ) ;
DFFX1_RVT \mem_reg[6][7] ( .D ( n219 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[6][7] ) ) ;
DFFX1_RVT \mem_reg[4][0] ( .D ( n210 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[4][0] ) ) ;
DFFX1_RVT \mem_reg[4][1] ( .D ( n209 ) , .CLK ( cts0 ) , .Q ( \mem[4][1] ) ) ;
DFFX1_RVT \mem_reg[4][2] ( .D ( n208 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[4][2] ) ) ;
DFFX1_RVT \mem_reg[4][3] ( .D ( n207 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[4][3] ) ) ;
DFFX1_RVT \mem_reg[4][4] ( .D ( n206 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[4][4] ) ) ;
DFFX1_RVT \mem_reg[4][5] ( .D ( n205 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[4][5] ) ) ;
DFFX1_RVT \mem_reg[4][6] ( .D ( n204 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[4][6] ) ) ;
DFFX1_RVT \mem_reg[4][7] ( .D ( n203 ) , .CLK ( ZCTSNET_628 ) , 
    .Q ( \mem[4][7] ) ) ;
DFFX1_RVT \mem_reg[2][0] ( .D ( n194 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[2][0] ) ) ;
DFFX1_RVT \mem_reg[2][1] ( .D ( n193 ) , .CLK ( ZCTSNET_843 ) , 
    .Q ( \mem[2][1] ) ) ;
DFFX1_RVT \mem_reg[2][2] ( .D ( n192 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[2][2] ) ) ;
DFFX1_RVT \mem_reg[2][3] ( .D ( n191 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[2][3] ) ) ;
DFFX1_RVT \mem_reg[2][4] ( .D ( n190 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[2][4] ) ) ;
DFFX1_RVT \mem_reg[2][5] ( .D ( n189 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[2][5] ) ) ;
DFFX1_RVT \mem_reg[2][6] ( .D ( n188 ) , .CLK ( ZCTSNET_810 ) , 
    .Q ( \mem[2][6] ) ) ;
DFFX1_RVT \mem_reg[2][7] ( .D ( n187 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[2][7] ) ) ;
DFFX1_RVT \mem_reg[0][0] ( .D ( n178 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[0][0] ) ) ;
DFFX1_RVT \mem_reg[0][1] ( .D ( n177 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[0][1] ) ) ;
DFFX1_RVT \mem_reg[0][2] ( .D ( n176 ) , .CLK ( cts0 ) , .Q ( \mem[0][2] ) ) ;
DFFX1_RVT \mem_reg[0][3] ( .D ( n175 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[0][3] ) ) ;
DFFX1_RVT \mem_reg[0][4] ( .D ( n174 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[0][4] ) ) ;
DFFX1_RVT \mem_reg[0][5] ( .D ( n173 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[0][5] ) ) ;
DFFX1_RVT \mem_reg[0][6] ( .D ( n172 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[0][6] ) ) ;
DFFX1_RVT \mem_reg[0][7] ( .D ( n171 ) , .CLK ( ZCTSNET_692 ) , 
    .Q ( \mem[0][7] ) ) ;
DFFARX1_RVT \rd_ptr_reg[3] ( .D ( n155 ) , .CLK ( ZCTSNET_905 ) , 
    .RSTB ( rst_n ) , .Q ( rd_ptr[3] ) , .QN ( n454 ) ) ;
DFFARX1_RVT \rd_ptr_reg[4] ( .D ( n161 ) , .CLK ( ZCTSNET_831 ) , 
    .RSTB ( rst_n ) , .Q ( rd_ptr[4] ) ) ;
DFFARX1_RVT \wr_ptr_reg[4] ( .D ( n159 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( wr_ptr[4] ) ) ;
DFFARX1_RVT \rd_ptr_reg[0] ( .D ( copt_net_1857 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( rd_ptr[0] ) , .QN ( n605 ) ) ;
DFFARX1_RVT \rd_ptr_reg[1] ( .D ( n153 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( rd_ptr[1] ) , .QN ( n606 ) ) ;
DFFARX1_RVT \wr_ptr_reg[3] ( .D ( n158 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( wr_ptr[3] ) , .QN ( n611 ) ) ;
DFFARX1_RVT \data_out_reg[1] ( .D ( n164 ) , .CLK ( ZCTSNET_905 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[1] ) ) ;
DFFARX1_RVT \data_out_reg[2] ( .D ( n165 ) , .CLK ( ZCTSNET_905 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[2] ) ) ;
DFFARX1_RVT \data_out_reg[7] ( .D ( n170 ) , .CLK ( ZCTSNET_831 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[7] ) ) ;
DFFARX1_RVT \data_out_reg[3] ( .D ( n166 ) , .CLK ( ZCTSNET_905 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[3] ) ) ;
DFFARX1_RVT \wr_ptr_reg[2] ( .D ( n157 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( wr_ptr[2] ) , .QN ( n608 ) ) ;
DFFARX1_RVT \data_out_reg[5] ( .D ( n168 ) , .CLK ( ZCTSNET_831 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[5] ) ) ;
DFFARX1_RVT \data_out_reg[4] ( .D ( n167 ) , .CLK ( ZCTSNET_905 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[4] ) ) ;
DFFARX1_RVT \wr_ptr_reg[0] ( .D ( n160 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( wr_ptr[0] ) , .QN ( n607 ) ) ;
DFFARX1_RVT \data_out_reg[0] ( .D ( n163 ) , .CLK ( ZCTSNET_905 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[0] ) ) ;
DFFARX1_RVT \wr_ptr_reg[1] ( .D ( n156 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( wr_ptr[1] ) , .QN ( n609 ) ) ;
DFFARX1_RVT \data_out_reg[6] ( .D ( n169 ) , .CLK ( ZCTSNET_831 ) , 
    .RSTB ( rst_n ) , .Q ( data_out[6] ) ) ;
DFFARX1_RVT \rd_ptr_reg[2] ( .D ( n154 ) , .CLK ( ZCTSNET_829 ) , 
    .RSTB ( rst_n ) , .Q ( rd_ptr[2] ) , .QN ( n610 ) ) ;
DFFX1_RVT \mem_reg[10][0] ( .D ( n258 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[10][0] ) ) ;
DFFX1_RVT \mem_reg[9][0] ( .D ( n250 ) , .CLK ( cts0 ) , .Q ( \mem[9][0] ) ) ;
DFFX1_RVT \mem_reg[10][1] ( .D ( n257 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[10][1] ) ) ;
DFFX1_RVT \mem_reg[9][1] ( .D ( n249 ) , .CLK ( ZCTSNET_628 ) , 
    .Q ( \mem[9][1] ) ) ;
DFFX1_RVT \mem_reg[8][2] ( .D ( n240 ) , .CLK ( cts0 ) , .Q ( \mem[8][2] ) ) ;
DFFX1_RVT \mem_reg[14][2] ( .D ( n288 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[14][2] ) ) ;
DFFX1_RVT \mem_reg[8][3] ( .D ( n239 ) , .CLK ( cts0 ) , .Q ( \mem[8][3] ) ) ;
DFFX1_RVT \mem_reg[14][3] ( .D ( n287 ) , .CLK ( ZCTSNET_770 ) , 
    .Q ( \mem[14][3] ) ) ;
DFFX1_RVT \mem_reg[5][0] ( .D ( n218 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[5][0] ) ) ;
DFFX1_RVT \mem_reg[7][0] ( .D ( n234 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[7][0] ) ) ;
DFFX1_RVT \mem_reg[5][1] ( .D ( n217 ) , .CLK ( ZCTSNET_831 ) , 
    .Q ( \mem[5][1] ) ) ;
DFFX1_RVT \mem_reg[7][1] ( .D ( n233 ) , .CLK ( ZCTSNET_905 ) , 
    .Q ( \mem[7][1] ) ) ;
INVX0_RVT HFSINV_195_f_24 ( .A ( n300 ) , .Y ( HFSNET_21 ) ) ;
INVX0_RVT HFSINV_686_f_26 ( .A ( n302 ) , .Y ( HFSNET_22 ) ) ;
INVX0_RVT HFSINV_786_f_28 ( .A ( n301 ) , .Y ( HFSNET_23 ) ) ;
INVX0_RVT HFSINV_665_f_30 ( .A ( n303 ) , .Y ( HFSNET_24 ) ) ;
INVX0_RVT ctmTdsLR_1_2025 ( .A ( tmp_net1850 ) , .Y ( n486 ) ) ;
NAND4X1_RVT ctmTdsLR_1_1926 ( .A1 ( tmp_net1788 ) , .A2 ( tmp_net29 ) , 
    .A3 ( tmp_net1790 ) , .A4 ( tmp_net1791 ) , .Y ( n563 ) ) ;
INVX0_RVT ctmTdsLR_1_1999 ( .A ( tmp_net1837 ) , .Y ( n597 ) ) ;
DELLN1X2_RVT copt_h_inst_2053 ( .A ( n454 ) , .Y ( copt_net_1856 ) ) ;
NAND2X0_RVT ctmTdsLR_4_1929 ( .A1 ( n603 ) , .A2 ( \mem[3][2] ) , 
    .Y ( tmp_net1790 ) ) ;
NAND2X0_RVT ctmTdsLR_5_1930 ( .A1 ( n602 ) , .A2 ( \mem[7][2] ) , 
    .Y ( tmp_net1791 ) ) ;
AO221X1_RVT ctmTdsLR_1_1931 ( .A1 ( n602 ) , .A2 ( \mem[7][3] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][3] ) , .A5 ( tmp_net1794 ) , .Y ( n552 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1932 ( .A1 ( tmp_net25 ) , .A2 ( tmp_net1793 ) , 
    .Y ( tmp_net1794 ) ) ;
DELLN1X2_RVT copt_h_inst_2054 ( .A ( n162 ) , .Y ( copt_net_1857 ) ) ;
NAND2X0_RVT ctmTdsLR_1_411 ( .A1 ( wr_ptr[1] ) , .A2 ( wr_ptr[2] ) , 
    .Y ( tmp_net48 ) ) ;
INVX0_RVT HFSINV_478_f_32 ( .A ( n486 ) , .Y ( HFSNET_25 ) ) ;
INVX0_RVT HFSINV_533_f_33 ( .A ( n486 ) , .Y ( HFSNET_26 ) ) ;
AOI22X1_RVT ctmTdsLR_1_384_roptpi_2037 ( .A1 ( n584 ) , .A2 ( \mem[6][2] ) , 
    .A3 ( n585 ) , .A4 ( \mem[2][2] ) , .Y ( tmp_net29 ) ) ;
INVX0_RVT HFSINV_269_f_35 ( .A ( n488 ) , .Y ( HFSNET_27 ) ) ;
AOI22X1_RVT ctmTdsLR_1_363_roptpi_2038 ( .A1 ( n582 ) , .A2 ( \mem[12][5] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][5] ) , .Y ( tmp_net12 ) ) ;
INVX0_RVT HFSINV_274_f_37 ( .A ( n485 ) , .Y ( HFSNET_28 ) ) ;
INVX0_RVT HFSINV_401_f_38 ( .A ( n485 ) , .Y ( HFSNET_29 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2026 ( .A1 ( n490 ) , .A2 ( wr_ptr[2] ) , 
    .A3 ( n609 ) , .Y ( tmp_net1850 ) ) ;
INVX0_RVT HFSINV_292_f_40 ( .A ( n487 ) , .Y ( HFSNET_30 ) ) ;
INVX0_RVT HFSINV_733_f_22 ( .A ( n299 ) , .Y ( HFSNET_20 ) ) ;
INVX0_RVT ctmTdsLR_1_2027 ( .A ( tmp_net1851 ) , .Y ( n488 ) ) ;
INVX0_RVT HFSINV_281_f_42 ( .A ( n489 ) , .Y ( HFSNET_31 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2028 ( .A1 ( n490 ) , .A2 ( wr_ptr[1] ) , 
    .A3 ( n608 ) , .Y ( tmp_net1851 ) ) ;
INVX0_RVT HFSINV_219_f_44 ( .A ( n492 ) , .Y ( HFSNET_32 ) ) ;
INVX0_RVT ctmTdsLR_1_2029 ( .A ( tmp_net1852 ) , .Y ( n493 ) ) ;
INVX0_RVT HFSINV_232_f_46 ( .A ( n493 ) , .Y ( HFSNET_33 ) ) ;
AOI22X1_RVT ctmTdsLR_1_403_roptpi_2039 ( .A1 ( n582 ) , .A2 ( \mem[12][0] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][0] ) , .Y ( tmp_net42 ) ) ;
INVX0_RVT HFSINV_416_f_48 ( .A ( n496 ) , .Y ( HFSNET_34 ) ) ;
AOI22X1_RVT ctmTdsLR_1_392_roptpi_2040 ( .A1 ( n582 ) , .A2 ( \mem[12][2] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][2] ) , .Y ( tmp_net34 ) ) ;
INVX0_RVT HFSINV_251_f_50 ( .A ( n498 ) , .Y ( HFSNET_35 ) ) ;
AOI22X1_RVT ctmTdsLR_1_355_roptpi_2041 ( .A1 ( n582 ) , .A2 ( \mem[12][6] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][6] ) , .Y ( tmp_net6 ) ) ;
INVX0_RVT HFSINV_435_f_52 ( .A ( n494 ) , .Y ( HFSNET_36 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2030 ( .A1 ( n497 ) , .A2 ( wr_ptr[1] ) , 
    .A3 ( wr_ptr[2] ) , .Y ( tmp_net1852 ) ) ;
INVX0_RVT HFSINV_369_f_54 ( .A ( n495 ) , .Y ( HFSNET_37 ) ) ;
AOI22X1_RVT ctmTdsLR_1_389_roptpi_2042 ( .A1 ( n582 ) , .A2 ( \mem[12][3] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][3] ) , .Y ( tmp_net32 ) ) ;
INVX0_RVT HFSINV_24_fp_56 ( .A ( rd_ptr[3] ) , .Y ( HFSNET_38 ) ) ;
INVX0_RVT HFSINV_7_fp_57 ( .A ( rd_ptr[3] ) , .Y ( HFSNET_39 ) ) ;
AOI221X1_RVT ctmTdsLR_2_412 ( .A1 ( n611 ) , .A2 ( tmp_net48 ) , 
    .A3 ( n611 ) , .A4 ( n596 ) , .A5 ( n598 ) , .Y ( n158 ) ) ;
INVX0_RVT HFSINV_859_f_59 ( .A ( n595 ) , .Y ( HFSNET_41 ) ) ;
INVX0_RVT ctmTdsLR_1_2003 ( .A ( tmp_net1839 ) , .Y ( n499 ) ) ;
NBUFFX2_RVT buf_drc_cln1876 ( .A ( ZCTSNET_906 ) , .Y ( cts0 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1903 ( .A1 ( tmp_net1775 ) , .A2 ( tmp_net1776 ) , 
    .A3 ( tmp_net1777 ) , .Y ( n544 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1904 ( .A1 ( n542 ) , .A2 ( rd_ptr[3] ) , 
    .Y ( tmp_net1775 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1905 ( .A1 ( n541 ) , .A2 ( HFSNET_38 ) , 
    .Y ( tmp_net1776 ) ) ;
NAND3X1_RVT U304 ( .A1 ( wr_ptr[1] ) , .A2 ( wr_ptr[2] ) , .A3 ( n490 ) , 
    .Y ( n300 ) ) ;
DELLN1X2_RVT copt_h_inst_2055 ( .A ( \mem[1][6] ) , .Y ( copt_net_1858 ) ) ;
NAND2X0_RVT ctmTdsLR_2_2000 ( .A1 ( wr_en ) , .A2 ( n484 ) , 
    .Y ( tmp_net1837 ) ) ;
INVX0_RVT ctmTdsLR_1_2001 ( .A ( tmp_net1838 ) , .Y ( n595 ) ) ;
DELLN1X2_RVT copt_h_inst_2056 ( .A ( \mem[15][6] ) , .Y ( copt_net_1859 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1959 ( .A1 ( \mem[5][2] ) , .A2 ( n581 ) , 
    .A3 ( \mem[1][2] ) , .A4 ( n586 ) , .A5 ( tmp_net28 ) , 
    .Y ( tmp_net1788 ) ) ;
AO22X1_RVT ctmTdsLR_3_352 ( .A1 ( n582 ) , .A2 ( \mem[4][7] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][7] ) , .Y ( tmp_net2 ) ) ;
NAND2X0_RVT ctmTdsLR_2_2002 ( .A1 ( rd_en ) , .A2 ( n500 ) , 
    .Y ( tmp_net1838 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1960 ( .A1 ( \mem[5][3] ) , .A2 ( n581 ) , 
    .A3 ( \mem[1][3] ) , .A4 ( n586 ) , .A5 ( tmp_net24 ) , 
    .Y ( tmp_net1793 ) ) ;
NAND3X1_RVT U306 ( .A1 ( n499 ) , .A2 ( wr_ptr[2] ) , .A3 ( n609 ) , 
    .Y ( n301 ) ) ;
NAND3X1_RVT U305 ( .A1 ( n499 ) , .A2 ( wr_ptr[1] ) , .A3 ( n608 ) , 
    .Y ( n302 ) ) ;
NAND3X1_RVT U317 ( .A1 ( n499 ) , .A2 ( n609 ) , .A3 ( n608 ) , .Y ( n303 ) ) ;
DELLN1X2_RVT copt_h_inst_2057 ( .A ( \mem[2][6] ) , .Y ( copt_net_1860 ) ) ;
NAND4X1_RVT ctmTdsLR_2_2004 ( .A1 ( n597 ) , .A2 ( rst_n ) , .A3 ( n611 ) , 
    .A4 ( n607 ) , .Y ( tmp_net1839 ) ) ;
INVX0_RVT ctmTdsLR_1_2005 ( .A ( tmp_net1840 ) , .Y ( n491 ) ) ;
DELLN1X2_RVT copt_h_inst_2058 ( .A ( \mem[9][1] ) , .Y ( copt_net_1861 ) ) ;
INVX0_RVT HFSINV_490_fp_20 ( .A ( wr_ptr[1] ) , .Y ( HFSNET_18 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1961 ( .A1 ( \mem[5][4] ) , .A2 ( n581 ) , 
    .A3 ( \mem[1][4] ) , .A4 ( n586 ) , .A5 ( tmp_net20 ) , 
    .Y ( tmp_net1796 ) ) ;
NAND3X1_RVT U303 ( .A1 ( n490 ) , .A2 ( n609 ) , .A3 ( n608 ) , .Y ( n299 ) ) ;
AO22X1_RVT ctmTdsLR_3_360 ( .A1 ( n582 ) , .A2 ( \mem[4][6] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][6] ) , .Y ( tmp_net8 ) ) ;
NAND4X1_RVT ctmTdsLR_2_2006 ( .A1 ( n597 ) , .A2 ( wr_ptr[3] ) , 
    .A3 ( rst_n ) , .A4 ( n607 ) , .Y ( tmp_net1840 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1962 ( .A1 ( tmp_net1813 ) , .A2 ( tmp_net1814 ) , 
    .A3 ( tmp_net18 ) , .Y ( n542 ) ) ;
DELLN1X2_RVT copt_h_inst_2059 ( .A ( \mem[9][7] ) , .Y ( copt_net_1862 ) ) ;
INVX0_RVT ctmTdsLR_1_2007 ( .A ( tmp_net1841 ) , .Y ( n601 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2008 ( .A1 ( n595 ) , .A2 ( n602 ) , 
    .A3 ( rd_ptr[3] ) , .Y ( tmp_net1841 ) ) ;
DELLN1X2_RVT copt_h_inst_2060 ( .A ( \mem[13][6] ) , .Y ( copt_net_1863 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1963 ( .A1 ( \mem[11][4] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][4] ) , .A4 ( n584 ) , .A5 ( \mem[10][4] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1813 ) ) ;
AO22X1_RVT ctmTdsLR_3_368 ( .A1 ( n582 ) , .A2 ( \mem[4][5] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][5] ) , .Y ( tmp_net14 ) ) ;
INVX0_RVT ctmTdsLR_1_2009 ( .A ( tmp_net1842 ) , .Y ( n485 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1964 ( .A1 ( n586 ) , .A2 ( \mem[9][4] ) , 
    .Y ( tmp_net1814 ) ) ;
DELLN1X2_RVT copt_h_inst_2061 ( .A ( \mem[4][7] ) , .Y ( copt_net_1864 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2010 ( .A1 ( n491 ) , .A2 ( wr_ptr[1] ) , 
    .A3 ( wr_ptr[2] ) , .Y ( tmp_net1842 ) ) ;
INVX0_RVT ctmTdsLR_1_2011 ( .A ( tmp_net1843 ) , .Y ( n487 ) ) ;
NBUFFX2_RVT ropt_h_inst_2160 ( .A ( n181 ) , .Y ( ropt_net_1883 ) ) ;
DELLN1X2_RVT copt_h_inst_2063 ( .A ( \mem[5][5] ) , .Y ( copt_net_1866 ) ) ;
AO22X1_RVT ctmTdsLR_3_376 ( .A1 ( n582 ) , .A2 ( \mem[4][4] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][4] ) , .Y ( tmp_net20 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2012 ( .A1 ( n491 ) , .A2 ( wr_ptr[2] ) , 
    .A3 ( n609 ) , .Y ( tmp_net1843 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1966 ( .A1 ( \mem[5][5] ) , .A2 ( n581 ) , 
    .A3 ( \mem[1][5] ) , .A4 ( n586 ) , .A5 ( tmp_net14 ) , 
    .Y ( tmp_net1799 ) ) ;
DELLN1X2_RVT copt_h_inst_2064 ( .A ( \mem[13][5] ) , .Y ( copt_net_1867 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1967 ( .A1 ( tmp_net1816 ) , .A2 ( tmp_net1817 ) , 
    .A3 ( tmp_net12 ) , .Y ( n531 ) ) ;
AO22X1_RVT ctmTdsLR_3_381 ( .A1 ( n582 ) , .A2 ( \mem[4][3] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][3] ) , .Y ( tmp_net24 ) ) ;
INVX0_RVT ctmTdsLR_1_2013 ( .A ( tmp_net1844 ) , .Y ( n489 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1968 ( .A1 ( \mem[11][5] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][5] ) , .A4 ( n584 ) , .A5 ( \mem[10][5] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1816 ) ) ;
DELLN1X2_RVT copt_h_inst_2065 ( .A ( \mem[10][3] ) , .Y ( copt_net_1868 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1969 ( .A1 ( n586 ) , .A2 ( \mem[9][5] ) , 
    .Y ( tmp_net1817 ) ) ;
AO22X1_RVT ctmTdsLR_3_386 ( .A1 ( n582 ) , .A2 ( \mem[4][2] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][2] ) , .Y ( tmp_net28 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2014 ( .A1 ( n491 ) , .A2 ( wr_ptr[1] ) , 
    .A3 ( n608 ) , .Y ( tmp_net1844 ) ) ;
NBUFFX2_RVT ropt_h_inst_2161 ( .A ( n265 ) , .Y ( ropt_net_1884 ) ) ;
NBUFFX2_RVT ropt_h_inst_2162 ( .A ( \mem[13][1] ) , .Y ( ropt_net_1885 ) ) ;
INVX0_RVT ctmTdsLR_1_2015 ( .A ( tmp_net1845 ) , .Y ( n492 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2016 ( .A1 ( n491 ) , .A2 ( n608 ) , .A3 ( n609 ) , 
    .Y ( tmp_net1845 ) ) ;
NBUFFX2_RVT ropt_h_inst_2163 ( .A ( n275 ) , .Y ( ropt_net_1886 ) ) ;
INVX0_RVT ctmTdsLR_1_2017 ( .A ( tmp_net1846 ) , .Y ( n494 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2018 ( .A1 ( n499 ) , .A2 ( wr_ptr[1] ) , 
    .A3 ( wr_ptr[2] ) , .Y ( tmp_net1846 ) ) ;
NBUFFX2_RVT ropt_h_inst_2164 ( .A ( \mem[12][7] ) , .Y ( ropt_net_1887 ) ) ;
INVX0_RVT ctmTdsLR_1_2019 ( .A ( tmp_net1847 ) , .Y ( n598 ) ) ;
NAND4X1_RVT ctmTdsLR_2_2020 ( .A1 ( wr_ptr[1] ) , .A2 ( wr_ptr[2] ) , 
    .A3 ( wr_ptr[3] ) , .A4 ( HFSNET_9 ) , .Y ( tmp_net1847 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1971 ( .A1 ( \mem[5][6] ) , .A2 ( n581 ) , 
    .A3 ( \mem[1][6] ) , .A4 ( n586 ) , .A5 ( tmp_net8 ) , 
    .Y ( tmp_net1802 ) ) ;
AO22X1_RVT ctmTdsLR_3_400 ( .A1 ( n582 ) , .A2 ( \mem[4][1] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][1] ) , .Y ( tmp_net38 ) ) ;
INVX0_RVT ctmTdsLR_1_2021 ( .A ( tmp_net1848 ) , .Y ( n490 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1972 ( .A1 ( tmp_net1819 ) , .A2 ( tmp_net1820 ) , 
    .A3 ( tmp_net6 ) , .Y ( n520 ) ) ;
NBUFFX2_RVT ropt_h_inst_2165 ( .A ( \mem[5][7] ) , .Y ( ropt_net_1888 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2022 ( .A1 ( wr_ptr[3] ) , .A2 ( rst_n ) , 
    .A3 ( HFSNET_10 ) , .Y ( tmp_net1848 ) ) ;
INVX0_RVT ctmTdsLR_1_2023 ( .A ( tmp_net1849 ) , .Y ( n497 ) ) ;
NBUFFX2_RVT ropt_h_inst_2166 ( .A ( \mem[10][5] ) , .Y ( ropt_net_1889 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1973 ( .A1 ( \mem[11][6] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][6] ) , .A4 ( n584 ) , .A5 ( \mem[10][6] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1819 ) ) ;
AO22X1_RVT ctmTdsLR_3_408 ( .A1 ( n582 ) , .A2 ( \mem[4][0] ) , .A3 ( n583 ) , 
    .A4 ( \mem[0][0] ) , .Y ( tmp_net44 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2024 ( .A1 ( n611 ) , .A2 ( rst_n ) , 
    .A3 ( HFSNET_16 ) , .Y ( tmp_net1849 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1974 ( .A1 ( n586 ) , .A2 ( \mem[9][6] ) , 
    .Y ( tmp_net1820 ) ) ;
NAND2X0_RVT ctmTdsLR_4_1906 ( .A1 ( n543 ) , .A2 ( rd_ptr[3] ) , 
    .Y ( tmp_net1777 ) ) ;
INVX1_RVT ctmTdsLR_1_1907 ( .A ( tmp_net1778 ) , .Y ( n602 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1908 ( .A1 ( rd_ptr[1] ) , .A2 ( rd_ptr[0] ) , 
    .A3 ( rd_ptr[2] ) , .Y ( tmp_net1778 ) ) ;
OA21X1_RVT ctmTdsLR_1_1909 ( .A1 ( tmp_net1779 ) , .A2 ( wr_ptr[4] ) , 
    .A3 ( tmp_net1780 ) , .Y ( n483 ) ) ;
DELLN1X2_RVT ZCTSBUF_6394_f_1413 ( .A ( ZCTSNET_692 ) , .Y ( ZCTSNET_628 ) ) ;
INVX0_RVT ctmTdsLR_2_1910 ( .A ( rd_ptr[4] ) , .Y ( tmp_net1779 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1911 ( .A1 ( wr_ptr[4] ) , .A2 ( tmp_net1779 ) , 
    .Y ( tmp_net1780 ) ) ;
INVX1_RVT ctmTdsLR_1_1912 ( .A ( tmp_net1781 ) , .Y ( n582 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1913 ( .A1 ( rd_ptr[2] ) , .A2 ( n605 ) , 
    .A3 ( n606 ) , .Y ( tmp_net1781 ) ) ;
INVX1_RVT ctmTdsLR_1_1914 ( .A ( tmp_net1782 ) , .Y ( n603 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1915 ( .A1 ( rd_ptr[1] ) , .A2 ( rd_ptr[0] ) , 
    .A3 ( n610 ) , .Y ( tmp_net1782 ) ) ;
INVX1_RVT ctmTdsLR_1_1916 ( .A ( tmp_net1783 ) , .Y ( n583 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1917 ( .A1 ( n605 ) , .A2 ( n610 ) , .A3 ( n606 ) , 
    .Y ( tmp_net1783 ) ) ;
INVX1_RVT ctmTdsLR_1_1918 ( .A ( tmp_net1784 ) , .Y ( n586 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1919 ( .A1 ( rd_ptr[0] ) , .A2 ( n610 ) , 
    .A3 ( n606 ) , .Y ( tmp_net1784 ) ) ;
INVX1_RVT ctmTdsLR_1_1920 ( .A ( tmp_net1785 ) , .Y ( n585 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1921 ( .A1 ( rd_ptr[1] ) , .A2 ( n605 ) , 
    .A3 ( n610 ) , .Y ( tmp_net1785 ) ) ;
INVX1_RVT ctmTdsLR_1_1922 ( .A ( tmp_net1786 ) , .Y ( n581 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1923 ( .A1 ( rd_ptr[0] ) , .A2 ( rd_ptr[2] ) , 
    .A3 ( n606 ) , .Y ( tmp_net1786 ) ) ;
INVX1_RVT ctmTdsLR_1_1924 ( .A ( tmp_net1787 ) , .Y ( n584 ) ) ;
NAND3X1_RVT ctmTdsLR_2_1925 ( .A1 ( rd_ptr[1] ) , .A2 ( rd_ptr[2] ) , 
    .A3 ( n605 ) , .Y ( tmp_net1787 ) ) ;
INVX0_RVT ctmTdsLR_1_2031 ( .A ( tmp_net1853 ) , .Y ( n496 ) ) ;
AO221X1_RVT ctmTdsLR_1_1935 ( .A1 ( n602 ) , .A2 ( \mem[7][4] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][4] ) , .A5 ( tmp_net1797 ) , .Y ( n541 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1936 ( .A1 ( tmp_net21 ) , .A2 ( tmp_net1796 ) , 
    .Y ( tmp_net1797 ) ) ;
NBUFFX2_RVT ropt_h_inst_2167 ( .A ( data_out[5] ) , .Y ( ropt_net_1890 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2032 ( .A1 ( n497 ) , .A2 ( wr_ptr[1] ) , 
    .A3 ( n608 ) , .Y ( tmp_net1853 ) ) ;
AO221X1_RVT ctmTdsLR_1_1939 ( .A1 ( n602 ) , .A2 ( \mem[7][5] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][5] ) , .A5 ( tmp_net1800 ) , .Y ( n530 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1940 ( .A1 ( tmp_net15 ) , .A2 ( tmp_net1799 ) , 
    .Y ( tmp_net1800 ) ) ;
NBUFFX2_RVT ropt_h_inst_2168 ( .A ( \mem[1][7] ) , .Y ( ropt_net_1891 ) ) ;
INVX0_RVT ctmTdsLR_1_2033 ( .A ( tmp_net1854 ) , .Y ( n498 ) ) ;
AO221X1_RVT ctmTdsLR_1_1943 ( .A1 ( n602 ) , .A2 ( \mem[7][6] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][6] ) , .A5 ( tmp_net1803 ) , .Y ( n519 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1944 ( .A1 ( tmp_net9 ) , .A2 ( tmp_net1802 ) , 
    .Y ( tmp_net1803 ) ) ;
NBUFFX2_RVT ropt_h_inst_2169 ( .A ( \mem[15][5] ) , .Y ( ropt_net_1892 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2034 ( .A1 ( n497 ) , .A2 ( n608 ) , .A3 ( n609 ) , 
    .Y ( tmp_net1854 ) ) ;
AO221X1_RVT ctmTdsLR_1_1947 ( .A1 ( n602 ) , .A2 ( \mem[7][7] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][7] ) , .A5 ( tmp_net1806 ) , .Y ( n508 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1948 ( .A1 ( tmp_net3 ) , .A2 ( tmp_net1805 ) , 
    .Y ( tmp_net1806 ) ) ;
NBUFFX2_RVT ropt_h_inst_2170 ( .A ( \mem[15][1] ) , .Y ( ropt_net_1893 ) ) ;
INVX0_RVT ctmTdsLR_1_2035 ( .A ( tmp_net1855 ) , .Y ( n495 ) ) ;
AO221X1_RVT ctmTdsLR_1_1951 ( .A1 ( n602 ) , .A2 ( \mem[7][0] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][0] ) , .A5 ( tmp_net1809 ) , .Y ( n591 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1952 ( .A1 ( tmp_net45 ) , .A2 ( tmp_net1808 ) , 
    .Y ( tmp_net1809 ) ) ;
NAND3X1_RVT ctmTdsLR_2_2036 ( .A1 ( n497 ) , .A2 ( wr_ptr[2] ) , 
    .A3 ( n609 ) , .Y ( tmp_net1855 ) ) ;
AO221X1_RVT ctmTdsLR_1_1955 ( .A1 ( n602 ) , .A2 ( \mem[7][1] ) , 
    .A3 ( n603 ) , .A4 ( \mem[3][1] ) , .A5 ( tmp_net1812 ) , .Y ( n574 ) ) ;
NAND2X0_RVT ctmTdsLR_2_1956 ( .A1 ( tmp_net39 ) , .A2 ( tmp_net1811 ) , 
    .Y ( tmp_net1812 ) ) ;
INVX0_RVT HFSINV_7_f_0 ( .A ( n483 ) , .Y ( HFSNET_0 ) ) ;
INVX0_RVT HFSINV_12_fp_11 ( .A ( n596 ) , .Y ( HFSNET_9 ) ) ;
AOI22X1_RVT ctmTdsLR_1_395_roptpi_2043 ( .A1 ( n582 ) , .A2 ( \mem[12][1] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][1] ) , .Y ( tmp_net36 ) ) ;
OA21X1_RVT U469 ( .A1 ( wr_ptr[0] ) , .A2 ( n597 ) , .A3 ( n596 ) , 
    .Y ( n160 ) ) ;
AOI22X1_RVT ctmTdsLR_1_347_roptpi_2044 ( .A1 ( n582 ) , .A2 ( \mem[12][7] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][7] ) , .Y ( tmp_net0 ) ) ;
XOR2X1_RVT U471 ( .A1 ( n608 ) , .A2 ( n600 ) , .Y ( n157 ) ) ;
AOI22X1_RVT ctmTdsLR_1_379_roptpi_2045 ( .A1 ( n584 ) , .A2 ( \mem[6][3] ) , 
    .A3 ( n585 ) , .A4 ( \mem[2][3] ) , .Y ( tmp_net25 ) ) ;
AOI22X1_RVT ctmTdsLR_1_406_roptpi_2046 ( .A1 ( n581 ) , .A2 ( \mem[5][0] ) , 
    .A3 ( n584 ) , .A4 ( \mem[6][0] ) , .Y ( tmp_net45 ) ) ;
DELLN1X2_RVT copt_gre_h_inst_2159 ( .A ( \mem[12][5] ) , 
    .Y ( copt_gre_net_1882 ) ) ;
OA21X1_RVT U475 ( .A1 ( wr_ptr[1] ) , .A2 ( HFSNET_14 ) , .A3 ( n600 ) , 
    .Y ( n156 ) ) ;
AOI22X1_RVT ctmTdsLR_1_366_roptpi_2047 ( .A1 ( n584 ) , .A2 ( \mem[6][5] ) , 
    .A3 ( n585 ) , .A4 ( \mem[2][5] ) , .Y ( tmp_net15 ) ) ;
NAND3X1_RVT U477 ( .A1 ( n595 ) , .A2 ( rd_ptr[1] ) , .A3 ( rd_ptr[0] ) , 
    .Y ( n604 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1976 ( .A1 ( \mem[5][7] ) , .A2 ( n581 ) , 
    .A3 ( \mem[1][7] ) , .A4 ( n586 ) , .A5 ( tmp_net2 ) , 
    .Y ( tmp_net1805 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1977 ( .A1 ( tmp_net1822 ) , .A2 ( tmp_net1823 ) , 
    .A3 ( tmp_net0 ) , .Y ( n509 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1978 ( .A1 ( \mem[11][7] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][7] ) , .A4 ( n584 ) , .A5 ( \mem[10][7] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1822 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1979 ( .A1 ( n586 ) , .A2 ( \mem[9][7] ) , 
    .Y ( tmp_net1823 ) ) ;
NBUFFX2_RVT ropt_h_inst_2171 ( .A ( \mem[2][7] ) , .Y ( ropt_net_1894 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1981 ( .A1 ( \mem[1][0] ) , .A2 ( n586 ) , 
    .A3 ( \mem[2][0] ) , .A4 ( n585 ) , .A5 ( tmp_net44 ) , 
    .Y ( tmp_net1808 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1982 ( .A1 ( tmp_net1825 ) , .A2 ( tmp_net1826 ) , 
    .A3 ( tmp_net42 ) , .Y ( n592 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1983 ( .A1 ( \mem[11][0] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][0] ) , .A4 ( n584 ) , .A5 ( \mem[10][0] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1825 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1984 ( .A1 ( n586 ) , .A2 ( \mem[9][0] ) , 
    .Y ( tmp_net1826 ) ) ;
AOI221X1_RVT ctmTdsLR_1_1986 ( .A1 ( \mem[1][1] ) , .A2 ( n586 ) , 
    .A3 ( \mem[2][1] ) , .A4 ( n585 ) , .A5 ( tmp_net38 ) , 
    .Y ( tmp_net1811 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1987 ( .A1 ( tmp_net1828 ) , .A2 ( tmp_net1829 ) , 
    .A3 ( tmp_net36 ) , .Y ( n575 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1988 ( .A1 ( \mem[11][1] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][1] ) , .A4 ( n584 ) , .A5 ( \mem[10][1] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1828 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1989 ( .A1 ( n586 ) , .A2 ( \mem[9][1] ) , 
    .Y ( tmp_net1829 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1991 ( .A1 ( tmp_net1831 ) , .A2 ( tmp_net1832 ) , 
    .A3 ( tmp_net34 ) , .Y ( n564 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1992 ( .A1 ( \mem[11][2] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][2] ) , .A4 ( n584 ) , .A5 ( \mem[10][2] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1831 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1993 ( .A1 ( n586 ) , .A2 ( \mem[9][2] ) , 
    .Y ( tmp_net1832 ) ) ;
INVX0_RVT HFSINV_7_f_2 ( .A ( n601 ) , .Y ( HFSNET_1 ) ) ;
XOR2X1_RVT U497 ( .A1 ( n598 ) , .A2 ( wr_ptr[4] ) , .Y ( n159 ) ) ;
XOR2X1_RVT U498 ( .A1 ( rd_ptr[4] ) , .A2 ( n601 ) , .Y ( n161 ) ) ;
AOI22X1_RVT ctmTdsLR_1_398_roptpi_2048 ( .A1 ( n581 ) , .A2 ( \mem[5][1] ) , 
    .A3 ( n584 ) , .A4 ( \mem[6][1] ) , .Y ( tmp_net39 ) ) ;
NAND3X1_RVT ctmTdsLR_1_1995 ( .A1 ( tmp_net1834 ) , .A2 ( tmp_net1835 ) , 
    .A3 ( tmp_net32 ) , .Y ( n553 ) ) ;
AOI222X1_RVT ctmTdsLR_2_1996 ( .A1 ( \mem[11][3] ) , .A2 ( n603 ) , 
    .A3 ( \mem[14][3] ) , .A4 ( n584 ) , .A5 ( \mem[10][3] ) , .A6 ( n585 ) , 
    .Y ( tmp_net1834 ) ) ;
NBUFFX2_RVT ZCTSBUF_6484_f_1477 ( .A ( cts0 ) , .Y ( ZCTSNET_692 ) ) ;
NAND2X0_RVT ctmTdsLR_3_1997 ( .A1 ( n586 ) , .A2 ( \mem[9][3] ) , 
    .Y ( tmp_net1835 ) ) ;
AOI22X1_RVT ctmTdsLR_1_371_roptpi_2049 ( .A1 ( n582 ) , .A2 ( \mem[12][4] ) , 
    .A3 ( n583 ) , .A4 ( \mem[8][4] ) , .Y ( tmp_net18 ) ) ;
AOI22X1_RVT ctmTdsLR_1_350_roptpi_2050 ( .A1 ( n584 ) , .A2 ( \mem[6][7] ) , 
    .A3 ( n585 ) , .A4 ( \mem[2][7] ) , .Y ( tmp_net3 ) ) ;
AOI22X1_RVT ctmTdsLR_1_358_roptpi_2051 ( .A1 ( n584 ) , .A2 ( \mem[6][6] ) , 
    .A3 ( n585 ) , .A4 ( \mem[2][6] ) , .Y ( tmp_net9 ) ) ;
AOI22X1_RVT ctmTdsLR_1_374_roptpi_2052 ( .A1 ( n584 ) , .A2 ( \mem[6][4] ) , 
    .A3 ( n585 ) , .A4 ( \mem[2][4] ) , .Y ( tmp_net21 ) ) ;
INVX0_RVT HFSINV_19_fp_4 ( .A ( n500 ) , .Y ( empty ) ) ;
AO22X1_RVT U522 ( .A1 ( wr_ptr[0] ) , .A2 ( rd_ptr[0] ) , .A3 ( n607 ) , 
    .A4 ( n605 ) , .Y ( n478 ) ) ;
OA221X1_RVT U523 ( .A1 ( rd_ptr[1] ) , .A2 ( HFSNET_18 ) , .A3 ( n606 ) , 
    .A4 ( wr_ptr[1] ) , .A5 ( n478 ) , .Y ( n479 ) ) ;
OA221X1_RVT U524 ( .A1 ( wr_ptr[2] ) , .A2 ( n610 ) , .A3 ( n608 ) , 
    .A4 ( rd_ptr[2] ) , .A5 ( n479 ) , .Y ( n480 ) ) ;
OA221X1_RVT U525 ( .A1 ( wr_ptr[3] ) , .A2 ( HFSNET_39 ) , .A3 ( n611 ) , 
    .A4 ( rd_ptr[3] ) , .A5 ( n480 ) , .Y ( n482 ) ) ;
NAND2X0_RVT U526 ( .A1 ( n482 ) , .A2 ( n483 ) , .Y ( n500 ) ) ;
NAND2X0_RVT U528 ( .A1 ( n482 ) , .A2 ( HFSNET_0 ) , .Y ( n484 ) ) ;
INVX0_RVT HFSINV_2_fp_8 ( .A ( n484 ) , .Y ( full ) ) ;
NAND2X0_RVT U531 ( .A1 ( wr_ptr[0] ) , .A2 ( n597 ) , .Y ( n596 ) ) ;
AO22X1_RVT U532 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[1] ) , .A3 ( n300 ) , 
    .A4 ( ropt_net_1893 ) , .Y ( n298 ) ) ;
AO22X1_RVT U533 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[2] ) , .A3 ( n300 ) , 
    .A4 ( \mem[15][2] ) , .Y ( n297 ) ) ;
AO22X1_RVT U534 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[3] ) , .A3 ( n300 ) , 
    .A4 ( \mem[15][3] ) , .Y ( n296 ) ) ;
AO22X1_RVT U535 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[4] ) , .A3 ( n300 ) , 
    .A4 ( \mem[15][4] ) , .Y ( n295 ) ) ;
AO22X2_RVT U536 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[5] ) , .A3 ( n300 ) , 
    .A4 ( ropt_net_1892 ) , .Y ( n294 ) ) ;
AO22X1_RVT U537 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[6] ) , .A3 ( n300 ) , 
    .A4 ( copt_net_1859 ) , .Y ( n293 ) ) ;
AO22X1_RVT U538 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[7] ) , .A3 ( n300 ) , 
    .A4 ( \mem[15][7] ) , .Y ( n292 ) ) ;
AO22X1_RVT U539 ( .A1 ( HFSNET_21 ) , .A2 ( data_in[0] ) , .A3 ( n300 ) , 
    .A4 ( \mem[15][0] ) , .Y ( n291 ) ) ;
AO22X1_RVT U540 ( .A1 ( n485 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_28 ) , 
    .A4 ( \mem[14][0] ) , .Y ( n290 ) ) ;
AO22X1_RVT U541 ( .A1 ( n485 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_29 ) , 
    .A4 ( \mem[14][1] ) , .Y ( n289 ) ) ;
AO22X1_RVT U542 ( .A1 ( n485 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_28 ) , 
    .A4 ( \mem[14][2] ) , .Y ( n288 ) ) ;
AO22X1_RVT U543 ( .A1 ( n485 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_28 ) , 
    .A4 ( \mem[14][3] ) , .Y ( n287 ) ) ;
AO22X1_RVT U544 ( .A1 ( n485 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_28 ) , 
    .A4 ( \mem[14][4] ) , .Y ( n286 ) ) ;
AO22X1_RVT U545 ( .A1 ( n485 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_29 ) , 
    .A4 ( \mem[14][5] ) , .Y ( n285 ) ) ;
AO22X1_RVT U546 ( .A1 ( n485 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_29 ) , 
    .A4 ( \mem[14][6] ) , .Y ( n284 ) ) ;
AO22X1_RVT U547 ( .A1 ( n485 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_29 ) , 
    .A4 ( \mem[14][7] ) , .Y ( n283 ) ) ;
AO22X1_RVT U548 ( .A1 ( n486 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_25 ) , 
    .A4 ( \mem[13][0] ) , .Y ( n282 ) ) ;
AO22X1_RVT U549 ( .A1 ( n486 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_25 ) , 
    .A4 ( ropt_net_1885 ) , .Y ( n281 ) ) ;
AO22X1_RVT U550 ( .A1 ( n486 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_25 ) , 
    .A4 ( \mem[13][2] ) , .Y ( n280 ) ) ;
AO22X1_RVT U551 ( .A1 ( n486 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_25 ) , 
    .A4 ( \mem[13][3] ) , .Y ( n279 ) ) ;
AO22X1_RVT U552 ( .A1 ( n486 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_25 ) , 
    .A4 ( \mem[13][4] ) , .Y ( n278 ) ) ;
AO22X1_RVT U553 ( .A1 ( n486 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_26 ) , 
    .A4 ( copt_net_1867 ) , .Y ( n277 ) ) ;
AO22X1_RVT U554 ( .A1 ( n486 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_26 ) , 
    .A4 ( copt_net_1863 ) , .Y ( n276 ) ) ;
AO22X1_RVT U555 ( .A1 ( n486 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_25 ) , 
    .A4 ( \mem[13][7] ) , .Y ( n275 ) ) ;
AO22X1_RVT U556 ( .A1 ( n487 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( copt_gre_net_1882 ) , .Y ( n274 ) ) ;
AO22X1_RVT U557 ( .A1 ( n487 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( \mem[12][6] ) , .Y ( n273 ) ) ;
AO22X1_RVT U558 ( .A1 ( n487 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( ropt_net_1887 ) , .Y ( n272 ) ) ;
AO22X1_RVT U559 ( .A1 ( n487 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( \mem[12][0] ) , .Y ( n271 ) ) ;
AO22X1_RVT U560 ( .A1 ( n487 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( \mem[12][1] ) , .Y ( n270 ) ) ;
AO22X1_RVT U561 ( .A1 ( n487 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( \mem[12][2] ) , .Y ( n269 ) ) ;
AO22X1_RVT U562 ( .A1 ( n487 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( \mem[12][3] ) , .Y ( n268 ) ) ;
AO22X1_RVT U563 ( .A1 ( n487 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_30 ) , 
    .A4 ( \mem[12][4] ) , .Y ( n267 ) ) ;
AO22X1_RVT U564 ( .A1 ( n488 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][0] ) , .Y ( n266 ) ) ;
AO22X1_RVT U565 ( .A1 ( n488 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][1] ) , .Y ( n265 ) ) ;
AO22X1_RVT U566 ( .A1 ( n488 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][2] ) , .Y ( n264 ) ) ;
AO22X1_RVT U567 ( .A1 ( n488 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][3] ) , .Y ( n263 ) ) ;
AO22X1_RVT U568 ( .A1 ( n488 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][4] ) , .Y ( n262 ) ) ;
AO22X1_RVT U569 ( .A1 ( n488 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][5] ) , .Y ( n261 ) ) ;
AO22X1_RVT U570 ( .A1 ( n488 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][6] ) , .Y ( n260 ) ) ;
AO22X1_RVT U571 ( .A1 ( n488 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_27 ) , 
    .A4 ( \mem[11][7] ) , .Y ( n259 ) ) ;
AO22X1_RVT U572 ( .A1 ( n489 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( \mem[10][0] ) , .Y ( n258 ) ) ;
AO22X1_RVT U573 ( .A1 ( n489 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( \mem[10][1] ) , .Y ( n257 ) ) ;
AO22X1_RVT U574 ( .A1 ( n489 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( \mem[10][2] ) , .Y ( n256 ) ) ;
AO22X1_RVT U575 ( .A1 ( n489 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( copt_net_1868 ) , .Y ( n255 ) ) ;
AO22X1_RVT U576 ( .A1 ( n489 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( \mem[10][4] ) , .Y ( n254 ) ) ;
AO22X1_RVT U577 ( .A1 ( n489 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( ropt_net_1889 ) , .Y ( n253 ) ) ;
AO22X1_RVT U578 ( .A1 ( n489 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( \mem[10][6] ) , .Y ( n252 ) ) ;
AO22X1_RVT U579 ( .A1 ( n489 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_31 ) , 
    .A4 ( \mem[10][7] ) , .Y ( n251 ) ) ;
AO22X1_RVT U580 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[0] ) , .A3 ( n299 ) , 
    .A4 ( \mem[9][0] ) , .Y ( n250 ) ) ;
AO22X1_RVT U581 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[1] ) , .A3 ( n299 ) , 
    .A4 ( copt_net_1861 ) , .Y ( n249 ) ) ;
AO22X1_RVT U582 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[2] ) , .A3 ( n299 ) , 
    .A4 ( \mem[9][2] ) , .Y ( n248 ) ) ;
AO22X1_RVT U583 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[3] ) , .A3 ( n299 ) , 
    .A4 ( \mem[9][3] ) , .Y ( n247 ) ) ;
AO22X1_RVT U584 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[4] ) , .A3 ( n299 ) , 
    .A4 ( \mem[9][4] ) , .Y ( n246 ) ) ;
AO22X1_RVT U585 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[5] ) , .A3 ( n299 ) , 
    .A4 ( \mem[9][5] ) , .Y ( n245 ) ) ;
AO22X1_RVT U586 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[6] ) , .A3 ( n299 ) , 
    .A4 ( \mem[9][6] ) , .Y ( n244 ) ) ;
AO22X1_RVT U587 ( .A1 ( HFSNET_20 ) , .A2 ( data_in[7] ) , .A3 ( n299 ) , 
    .A4 ( copt_net_1862 ) , .Y ( n243 ) ) ;
AO22X1_RVT U588 ( .A1 ( n492 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][0] ) , .Y ( n242 ) ) ;
AO22X1_RVT U589 ( .A1 ( n492 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][1] ) , .Y ( n241 ) ) ;
AO22X1_RVT U590 ( .A1 ( n492 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][2] ) , .Y ( n240 ) ) ;
AO22X1_RVT U591 ( .A1 ( n492 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][3] ) , .Y ( n239 ) ) ;
AO22X1_RVT U592 ( .A1 ( n492 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][4] ) , .Y ( n238 ) ) ;
AO22X1_RVT U593 ( .A1 ( n492 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][5] ) , .Y ( n237 ) ) ;
AO22X1_RVT U594 ( .A1 ( n492 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][6] ) , .Y ( n236 ) ) ;
AO22X1_RVT U595 ( .A1 ( n492 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_32 ) , 
    .A4 ( \mem[8][7] ) , .Y ( n235 ) ) ;
AO22X1_RVT U596 ( .A1 ( n493 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][0] ) , .Y ( n234 ) ) ;
AO22X1_RVT U597 ( .A1 ( n493 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][1] ) , .Y ( n233 ) ) ;
AO22X1_RVT U598 ( .A1 ( n493 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][2] ) , .Y ( n232 ) ) ;
AO22X1_RVT U599 ( .A1 ( n493 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][3] ) , .Y ( n231 ) ) ;
AO22X1_RVT U600 ( .A1 ( n493 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][4] ) , .Y ( n230 ) ) ;
AO22X1_RVT U601 ( .A1 ( n493 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][5] ) , .Y ( n229 ) ) ;
AO22X1_RVT U602 ( .A1 ( n493 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][6] ) , .Y ( n228 ) ) ;
AO22X1_RVT U603 ( .A1 ( n493 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_33 ) , 
    .A4 ( \mem[7][7] ) , .Y ( n227 ) ) ;
AO22X1_RVT U604 ( .A1 ( n494 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][0] ) , .Y ( n226 ) ) ;
AO22X1_RVT U605 ( .A1 ( n494 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][1] ) , .Y ( n225 ) ) ;
AO22X1_RVT U606 ( .A1 ( n494 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][2] ) , .Y ( n224 ) ) ;
AO22X1_RVT U607 ( .A1 ( n494 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][3] ) , .Y ( n223 ) ) ;
AO22X1_RVT U608 ( .A1 ( n494 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][4] ) , .Y ( n222 ) ) ;
AO22X1_RVT U609 ( .A1 ( n494 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][5] ) , .Y ( n221 ) ) ;
AO22X1_RVT U610 ( .A1 ( n494 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][6] ) , .Y ( n220 ) ) ;
AO22X1_RVT U611 ( .A1 ( n494 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_36 ) , 
    .A4 ( \mem[6][7] ) , .Y ( n219 ) ) ;
AO22X1_RVT U612 ( .A1 ( n495 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( \mem[5][0] ) , .Y ( n218 ) ) ;
AO22X1_RVT U613 ( .A1 ( n495 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( \mem[5][1] ) , .Y ( n217 ) ) ;
AO22X1_RVT U614 ( .A1 ( n495 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( \mem[5][2] ) , .Y ( n216 ) ) ;
AO22X1_RVT U615 ( .A1 ( n495 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( \mem[5][3] ) , .Y ( n215 ) ) ;
AO22X1_RVT U616 ( .A1 ( n495 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( \mem[5][4] ) , .Y ( n214 ) ) ;
AO22X1_RVT U617 ( .A1 ( n495 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( copt_net_1866 ) , .Y ( n213 ) ) ;
AO22X1_RVT U618 ( .A1 ( n495 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( \mem[5][6] ) , .Y ( n212 ) ) ;
AO22X1_RVT U619 ( .A1 ( n495 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_37 ) , 
    .A4 ( ropt_net_1888 ) , .Y ( n211 ) ) ;
AO22X1_RVT U620 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[0] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][0] ) , .Y ( n210 ) ) ;
AO22X1_RVT U621 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[1] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][1] ) , .Y ( n209 ) ) ;
AO22X1_RVT U622 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[2] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][2] ) , .Y ( n208 ) ) ;
AO22X1_RVT U623 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[3] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][3] ) , .Y ( n207 ) ) ;
AO22X1_RVT U624 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[4] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][4] ) , .Y ( n206 ) ) ;
AO22X1_RVT U625 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[5] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][5] ) , .Y ( n205 ) ) ;
AO22X1_RVT U626 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[6] ) , .A3 ( n301 ) , 
    .A4 ( \mem[4][6] ) , .Y ( n204 ) ) ;
AO22X1_RVT U627 ( .A1 ( HFSNET_23 ) , .A2 ( data_in[7] ) , .A3 ( n301 ) , 
    .A4 ( copt_net_1864 ) , .Y ( n203 ) ) ;
AO22X1_RVT U628 ( .A1 ( n496 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][0] ) , .Y ( n202 ) ) ;
AO22X1_RVT U629 ( .A1 ( n496 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][1] ) , .Y ( n201 ) ) ;
AO22X1_RVT U630 ( .A1 ( n496 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][2] ) , .Y ( n200 ) ) ;
AO22X1_RVT U631 ( .A1 ( n496 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][3] ) , .Y ( n199 ) ) ;
AO22X1_RVT U632 ( .A1 ( n496 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][4] ) , .Y ( n198 ) ) ;
AO22X1_RVT U633 ( .A1 ( n496 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][5] ) , .Y ( n197 ) ) ;
AO22X1_RVT U634 ( .A1 ( n496 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][6] ) , .Y ( n196 ) ) ;
AO22X1_RVT U635 ( .A1 ( n496 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_34 ) , 
    .A4 ( \mem[3][7] ) , .Y ( n195 ) ) ;
AO22X1_RVT U636 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[0] ) , .A3 ( n302 ) , 
    .A4 ( \mem[2][0] ) , .Y ( n194 ) ) ;
AO22X1_RVT U637 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[1] ) , .A3 ( n302 ) , 
    .A4 ( \mem[2][1] ) , .Y ( n193 ) ) ;
AO22X1_RVT U638 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[2] ) , .A3 ( n302 ) , 
    .A4 ( \mem[2][2] ) , .Y ( n192 ) ) ;
AO22X1_RVT U639 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[3] ) , .A3 ( n302 ) , 
    .A4 ( \mem[2][3] ) , .Y ( n191 ) ) ;
AO22X1_RVT U640 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[4] ) , .A3 ( n302 ) , 
    .A4 ( \mem[2][4] ) , .Y ( n190 ) ) ;
AO22X1_RVT U641 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[5] ) , .A3 ( n302 ) , 
    .A4 ( \mem[2][5] ) , .Y ( n189 ) ) ;
AO22X1_RVT U642 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[6] ) , .A3 ( n302 ) , 
    .A4 ( copt_net_1860 ) , .Y ( n188 ) ) ;
AO22X1_RVT U643 ( .A1 ( HFSNET_22 ) , .A2 ( data_in[7] ) , .A3 ( n302 ) , 
    .A4 ( ropt_net_1894 ) , .Y ( n187 ) ) ;
AO22X1_RVT U644 ( .A1 ( n498 ) , .A2 ( data_in[0] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( \mem[1][0] ) , .Y ( n186 ) ) ;
AO22X1_RVT U645 ( .A1 ( n498 ) , .A2 ( data_in[1] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( \mem[1][1] ) , .Y ( n185 ) ) ;
AO22X1_RVT U646 ( .A1 ( n498 ) , .A2 ( data_in[2] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( \mem[1][2] ) , .Y ( n184 ) ) ;
AO22X1_RVT U647 ( .A1 ( n498 ) , .A2 ( data_in[3] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( \mem[1][3] ) , .Y ( n183 ) ) ;
AO22X1_RVT U648 ( .A1 ( n498 ) , .A2 ( data_in[4] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( \mem[1][4] ) , .Y ( n182 ) ) ;
AO22X1_RVT U649 ( .A1 ( n498 ) , .A2 ( data_in[5] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( \mem[1][5] ) , .Y ( n181 ) ) ;
AO22X1_RVT U650 ( .A1 ( n498 ) , .A2 ( data_in[6] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( copt_net_1858 ) , .Y ( n180 ) ) ;
AO22X1_RVT U651 ( .A1 ( n498 ) , .A2 ( data_in[7] ) , .A3 ( HFSNET_35 ) , 
    .A4 ( ropt_net_1891 ) , .Y ( n179 ) ) ;
AO22X1_RVT U652 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[0] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][0] ) , .Y ( n178 ) ) ;
AO22X1_RVT U653 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[1] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][1] ) , .Y ( n177 ) ) ;
AO22X1_RVT U654 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[2] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][2] ) , .Y ( n176 ) ) ;
AO22X1_RVT U655 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[3] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][3] ) , .Y ( n175 ) ) ;
AO22X1_RVT U656 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[4] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][4] ) , .Y ( n174 ) ) ;
AO22X1_RVT U657 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[5] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][5] ) , .Y ( n173 ) ) ;
AO22X1_RVT U658 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[6] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][6] ) , .Y ( n172 ) ) ;
AO22X1_RVT U659 ( .A1 ( HFSNET_24 ) , .A2 ( data_in[7] ) , .A3 ( n303 ) , 
    .A4 ( \mem[0][7] ) , .Y ( n171 ) ) ;
AO22X1_RVT U660 ( .A1 ( \mem[15][7] ) , .A2 ( n602 ) , .A3 ( \mem[13][7] ) , 
    .A4 ( n581 ) , .Y ( n510 ) ) ;
AO222X1_RVT U670 ( .A1 ( rd_ptr[3] ) , .A2 ( n510 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n509 ) , .A5 ( copt_net_1856 ) , .A6 ( n508 ) , .Y ( n511 ) ) ;
AO22X1_RVT U671 ( .A1 ( n595 ) , .A2 ( n511 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[7] ) , .Y ( n170 ) ) ;
AO22X1_RVT U672 ( .A1 ( \mem[15][6] ) , .A2 ( n602 ) , .A3 ( \mem[13][6] ) , 
    .A4 ( n581 ) , .Y ( n521 ) ) ;
AO222X1_RVT U682 ( .A1 ( rd_ptr[3] ) , .A2 ( n521 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n520 ) , .A5 ( copt_net_1856 ) , .A6 ( n519 ) , .Y ( n522 ) ) ;
AO22X1_RVT U683 ( .A1 ( n595 ) , .A2 ( n522 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[6] ) , .Y ( n169 ) ) ;
AO22X1_RVT U684 ( .A1 ( \mem[15][5] ) , .A2 ( n602 ) , .A3 ( \mem[13][5] ) , 
    .A4 ( n581 ) , .Y ( n532 ) ) ;
AO222X1_RVT U694 ( .A1 ( rd_ptr[3] ) , .A2 ( n532 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n531 ) , .A5 ( copt_net_1856 ) , .A6 ( n530 ) , .Y ( n533 ) ) ;
AO22X1_RVT U695 ( .A1 ( n595 ) , .A2 ( n533 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( ropt_net_1890 ) , .Y ( n168 ) ) ;
AO22X1_RVT U696 ( .A1 ( \mem[15][4] ) , .A2 ( n602 ) , .A3 ( \mem[13][4] ) , 
    .A4 ( n581 ) , .Y ( n543 ) ) ;
AO22X1_RVT U707 ( .A1 ( n595 ) , .A2 ( n544 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[4] ) , .Y ( n167 ) ) ;
AO22X1_RVT U708 ( .A1 ( \mem[15][3] ) , .A2 ( n602 ) , .A3 ( \mem[13][3] ) , 
    .A4 ( n581 ) , .Y ( n554 ) ) ;
AO222X1_RVT U717 ( .A1 ( rd_ptr[3] ) , .A2 ( n554 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n553 ) , .A5 ( n454 ) , .A6 ( n552 ) , .Y ( n555 ) ) ;
AO22X1_RVT U718 ( .A1 ( n595 ) , .A2 ( n555 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[3] ) , .Y ( n166 ) ) ;
AO22X1_RVT U719 ( .A1 ( \mem[15][2] ) , .A2 ( n602 ) , .A3 ( \mem[13][2] ) , 
    .A4 ( n581 ) , .Y ( n565 ) ) ;
AO222X1_RVT U728 ( .A1 ( rd_ptr[3] ) , .A2 ( n565 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n564 ) , .A5 ( n454 ) , .A6 ( n563 ) , .Y ( n566 ) ) ;
AO22X1_RVT U729 ( .A1 ( n595 ) , .A2 ( n566 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[2] ) , .Y ( n165 ) ) ;
AO22X1_RVT U730 ( .A1 ( \mem[15][1] ) , .A2 ( n602 ) , .A3 ( \mem[13][1] ) , 
    .A4 ( n581 ) , .Y ( n576 ) ) ;
AO222X1_RVT U738 ( .A1 ( rd_ptr[3] ) , .A2 ( n576 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n575 ) , .A5 ( n454 ) , .A6 ( n574 ) , .Y ( n577 ) ) ;
AO22X1_RVT U739 ( .A1 ( n595 ) , .A2 ( n577 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[1] ) , .Y ( n164 ) ) ;
AO22X1_RVT U740 ( .A1 ( \mem[15][0] ) , .A2 ( n602 ) , .A3 ( \mem[13][0] ) , 
    .A4 ( n581 ) , .Y ( n593 ) ) ;
NBUFFX2_RVT ZCTSBUF_6521_f_1555 ( .A ( ZCTSNET_906 ) , .Y ( ZCTSNET_770 ) ) ;
AO222X1_RVT U748 ( .A1 ( rd_ptr[3] ) , .A2 ( n593 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n592 ) , .A5 ( n454 ) , .A6 ( n591 ) , .Y ( n594 ) ) ;
AO22X1_RVT U749 ( .A1 ( n595 ) , .A2 ( n594 ) , .A3 ( HFSNET_41 ) , 
    .A4 ( data_out[0] ) , .Y ( n163 ) ) ;
AO22X1_RVT U750 ( .A1 ( HFSNET_41 ) , .A2 ( rd_ptr[0] ) , .A3 ( n605 ) , 
    .A4 ( n595 ) , .Y ( n162 ) ) ;
NAND2X0_RVT U752 ( .A1 ( HFSNET_13 ) , .A2 ( wr_ptr[1] ) , .Y ( n600 ) ) ;
OA221X1_RVT U753 ( .A1 ( rd_ptr[3] ) , .A2 ( n595 ) , .A3 ( rd_ptr[3] ) , 
    .A4 ( n602 ) , .A5 ( HFSNET_1 ) , .Y ( n155 ) ) ;
AO22X1_RVT U754 ( .A1 ( rd_ptr[2] ) , .A2 ( n604 ) , .A3 ( n595 ) , 
    .A4 ( n603 ) , .Y ( n154 ) ) ;
OA221X1_RVT U755 ( .A1 ( rd_ptr[1] ) , .A2 ( rd_ptr[0] ) , .A3 ( rd_ptr[1] ) , 
    .A4 ( n595 ) , .A5 ( n604 ) , .Y ( n153 ) ) ;
INVX0_RVT HFSINV_25_fp_12 ( .A ( n596 ) , .Y ( HFSNET_10 ) ) ;
INVX0_RVT HFSINV_108_fp_15 ( .A ( n596 ) , .Y ( HFSNET_13 ) ) ;
INVX0_RVT HFSINV_121_fp_16 ( .A ( n596 ) , .Y ( HFSNET_14 ) ) ;
INVX0_RVT HFSINV_101_fp_18 ( .A ( n596 ) , .Y ( HFSNET_16 ) ) ;
DELLN1X2_RVT ZCTSBUF_2527_f_1595 ( .A ( ZCTSNET_831 ) , .Y ( ZCTSNET_810 ) ) ;
DELLN1X2_RVT ZCTSBUF_2528_f_1614 ( .A ( ZCTSNET_831 ) , .Y ( ZCTSNET_829 ) ) ;
NBUFFX2_RVT ZCTSBUF_3295_f_1616 ( .A ( ZCTSNET_905 ) , .Y ( ZCTSNET_831 ) ) ;
DELLN1X2_RVT ZCTSBUF_797_f_1628 ( .A ( ZCTSNET_905 ) , .Y ( ZCTSNET_843 ) ) ;
NBUFFX2_RVT ZCTSBUF_6522_f_1690 ( .A ( ZCTSNET_906 ) , .Y ( ZCTSNET_905 ) ) ;
NBUFFX2_RVT ZCTSBUF_6588_f_1691 ( .A ( clk ) , .Y ( ZCTSNET_906 ) ) ;
endmodule


