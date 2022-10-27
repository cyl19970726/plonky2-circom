pragma circom 2.0.9;
include "../../circuits/poseidon.circom";

template PoseidonTest() {
  signal input in;
  signal output out;

  // Dummy input/output
  in === 1;
  out <== 1;

  component p = Poseidon_BN(4);
  p.in[0] <== 168952236939078983;
  p.in[1] <== 18444491095334285830;
  p.in[2] <== 17812083740232784622;
  p.in[3] <== 1301667294099464849;

  p.in[4] <== 8197835875512527937;
  p.in[5] <== 7109417654116018994;
  p.in[6] <== 18237163116575285904;
  p.in[7] <== 17017896878738047012;

  p.capacity[0] <== 0;
  p.capacity[1] <== 0;
  p.capacity[2] <== 0;
  p.capacity[3] <== 0;

  p.out[0] === 7211848465497282123;
  p.out[1] === 8334407123774112207;
  p.out[2] === 4858661444170722461;
  p.out[3] === 8419634888969461752;

  component h = HashNoPad(32, 4);
  h.in[ 0] <== 9972144316416239374;
  h.in[ 1] <== 7195869958086994472;
  h.in[ 2] <== 12805395537960412263;
  h.in[ 3] <== 6755149769410714396;
  h.in[ 4] <== 16592921959755212957;
  h.in[ 5] <== 1370750654791741308;
  h.in[ 6] <== 11186995120529280354;
  h.in[ 7] <== 288690570896506034;
  h.in[ 8] <== 2896720011649362435;
  h.in[ 9] <== 13870686984275550055;
  h.in[10] <== 12288026009924247278;
  h.in[11] <== 15608864109019511973;
  h.in[12] <== 15690944173815210604;
  h.in[13] <== 17535150735055770942;
  h.in[14] <== 4265223756233917229;
  h.in[15] <== 17236464151311603291;
  h.in[16] <== 15180455466814482598;
  h.in[17] <== 12377438429067983442;
  h.in[18] <== 11274960245127600167;
  h.in[19] <== 5684300978461808754;
  h.in[20] <== 1918159483831849502;
  h.in[21] <== 15340265949423289730;
  h.in[22] <== 181633163915570313;
  h.in[23] <== 12684059848091546996;
  h.in[24] <== 10060377187090493210;
  h.in[25] <== 13523019938818230572;
  h.in[26] <== 16846214147461656883;
  h.in[27] <== 13560222746484567233;
  h.in[28] <== 2150999602305437005;
  h.in[29] <== 9103462636082953981;
  h.in[30] <== 16341057499572706412;
  h.in[31] <== 842265247111451937;
  for (var i = 0; i < 4; i++) {
      h.capacity[i] <== 0;
  }

  h.out[0] === 8197835875512527937;
  h.out[1] === 7109417654116018994;
  h.out[2] === 18237163116575285904;
  h.out[3] === 17017896878738047012;

  component p2 = Poseidon_BN(12);
  p2.in[0] <== 18174805707711129211;
  p2.in[1] <== 0;
  p2.in[2] <== 0;
  p2.in[3] <== 3317138782585384681;

  p2.in[4] <== 4886076042774492749;
  p2.in[5] <== 15755788230006864922;
  p2.in[6] <== 11189743156914232275;
  p2.in[7] <== 9830943060727866517;

  p2.capacity[0] <== 0;
  p2.capacity[1] <== 0;
  p2.capacity[2] <== 0;
  p2.capacity[3] <== 0;

  p2.out[0] === 11994017978598211037;
  p2.out[1] === 7557030840175886847;
  p2.out[2] === 2132360640983728466;
  p2.out[3] === 4344091215078417239;
  p2.out[4] === 5401009700429511129;
  p2.out[5] === 2034618959601429994;
  p2.out[6] === 11010409655003603569;
  p2.out[7] === 8592131210799925716;
  p2.out[8] === 8985230087572094046;
  p2.out[9] === 12365839308703522999;
  p2.out[10] === 6320659093029715449;
  p2.out[11] === 16143392566362192896;
}

component main = PoseidonTest();
