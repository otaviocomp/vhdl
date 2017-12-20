#include <freehdl/kernel.h>
#include <freehdl/std.h>


/* External declarations */
/* Definitions for enumeration type :IEEE:std_logic_1164:std_ulogic */
class L4ieee_Q14std_logic_1164_I10std_ulogic:public enum_info_base{
   static const char *values[];
public:
   L4ieee_Q14std_logic_1164_I10std_ulogic():enum_info_base(0,8,values) {};
   static const char **get_values() { return values; }
   static int low() { return 0; }
   static int high() { return 8; }
   static int left() { return 0; }
   static int right() { return 8; }
};
extern L4ieee_Q14std_logic_1164_I10std_ulogic L4ieee_Q14std_logic_1164_I10std_ulogic_INFO;
/** Enumeration info class :IEEE:std_logic_1164:std_logic */
class L4ieee_Q14std_logic_1164_I9std_logic:public enum_info_base{
   static const char **values;
public:
   L4ieee_Q14std_logic_1164_I9std_logic():enum_info_base(0,8,values) {};
   static const char **get_values() { return values; }
   static int low() { return 0; }
   static int high() { return 8; }
   static int left() { return 0; }
   static int right() { return 8; }
};
extern L4ieee_Q14std_logic_1164_I9std_logic L4ieee_Q14std_logic_1164_I9std_logic_INFO;
/* End of external declarations */
/* Entity class declaration */
class L4work_E7andgate {
public:
   void *father_component;
  L4work_E7andgate (name_stack &iname, map_list *mlist, void *father);
  ~L4work_E7andgate() {};
  sig_info<enumeration> *L4work_E7andgate_S1a,*L4work_E7andgate_S1b,*L4work_E7andgate_S1c;
};

/* Implementation of entity methods */
L4work_E7andgate::
L4work_E7andgate(name_stack &iname, map_list *mlist, void *father) {
    father_component = father;
    iname.push("");
    L4work_E7andgate_S1a=new sig_info<enumeration>(iname,":a",":work:andgate",mlist,(&L4ieee_Q14std_logic_1164_I9std_logic_INFO),vIN,this);
    L4work_E7andgate_S1b=new sig_info<enumeration>(iname,":b",":work:andgate",mlist,(&L4ieee_Q14std_logic_1164_I9std_logic_INFO),vIN,this);
    L4work_E7andgate_S1c=new sig_info<enumeration>(iname,":c",":work:andgate",mlist,(&L4ieee_Q14std_logic_1164_I9std_logic_INFO),vOUT,this);
    iname.pop();
};


/* Initialization function for entity :work:andgate */
int L3std_Q8standard_init ();
int L4ieee_Q14std_logic_1164_init ();
bool L4work_E7andgate_init_done = false;
int L4work_E7andgate_init(){
if (L4work_E7andgate_init_done) return 1;
L4work_E7andgate_init_done=true;
L3std_Q8standard_init ();
L4ieee_Q14std_logic_1164_init ();
register_source_file("/home/otavio/Documentos/vhdl/andgate/andgate.vhdl","andgate.vhdl");
name_stack iname;
iname.push("");
iname.pop();
return 1;
}

/* end of L4work_E7andgate Entity */
/* External declarations */
/** Enumeration info class :IEEE:std_logic_1164:ux01 */
class L4ieee_Q14std_logic_1164_I4ux01:public enum_info_base{
   static const char **values;
public:
   L4ieee_Q14std_logic_1164_I4ux01():enum_info_base(0,3,values) {};
   static const char **get_values() { return values; }
   static int low() { return 0; }
   static int high() { return 3; }
   static int left() { return 0; }
   static int right() { return 3; }
};
extern L4ieee_Q14std_logic_1164_I4ux01 L4ieee_Q14std_logic_1164_I4ux01_INFO;
/* Prototype for subprogram :IEEE:std_logic_1164:"and" */
enumeration L4ieee_Q14std_logic_1164_Y6op_and_i51(const enumeration ,const enumeration );
/* End of external declarations */
/* Architecture class declaration */
class L4work_E7andgate_A8hardware : public L4work_E7andgate {
public:
  L4work_E7andgate_A8hardware (name_stack &iname, map_list *mlist, void *father, int level);
  ~L4work_E7andgate_A8hardware();
};

/* Concurrent statement class declaration(s) */


/* Class decl. process _4pn */
class L4work_E7andgate_A8hardware_P4_4pn : public process_base {
public:
  L4work_E7andgate_A8hardware_P4_4pn(L4work_E7andgate_A8hardware* L4work_E7andgate_A8hardware_AP_PAR,name_stack &iname);
  ~L4work_E7andgate_A8hardware_P4_4pn() {};
  bool execute();
  L4work_E7andgate_A8hardware* L4work_E7andgate_A8hardware_AP;
  driver_info *L4work_E7andgate_D1c;
  enumeration *L4work_E7andgate_R1a,*L4work_E7andgate_R1b;
  sig_info<enumeration> *L4work_E7andgate_S1a,*L4work_E7andgate_S1b;
  winfo_item winfo[1];
  L4work_E7andgate_A8hardware *arch;
};
  /* Implementation of process :work:andgate(hardware):_4pn methods */
L4work_E7andgate_A8hardware_P4_4pn::
L4work_E7andgate_A8hardware_P4_4pn(L4work_E7andgate_A8hardware *L4work_E7andgate_A8hardware_AP_PAR,name_stack &iname) : process_base(iname) {
    L4work_E7andgate_A8hardware_AP=L4work_E7andgate_A8hardware_AP_PAR;
    L4work_E7andgate_S1a=L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1a;
    L4work_E7andgate_S1b=L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1b;
    L4work_E7andgate_R1a=&L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1a->reader();
    L4work_E7andgate_R1b=&L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1b->reader();
    L4work_E7andgate_D1c=kernel.get_driver(this,L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1c);
    {
     sigacl_list sal(2);
     sal.add(L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1a);
     sal.add(L4work_E7andgate_A8hardware_AP->L4work_E7andgate_S1b);
     winfo[0]=kernel.setup_wait_info(sal,this);
    }
}
bool L4work_E7andgate_A8hardware_P4_4pn::execute() {
    L4work_E7andgate_D1c->inertial_assign(L4ieee_Q14std_logic_1164_Y6op_and_i51 ((*L4work_E7andgate_R1a),(*L4work_E7andgate_R1b)),vtime(0));
    return true;
}

/* handle for simulator to find architecture */
void*
L4work_E7andgate_A8hardware_handle(name_stack &iname, map_list *mlist, void *father, int level) {
 REPORT(cout << "Starting constructor L4work_E7andgate_A8hardware ..." << endl);
 return new L4work_E7andgate_A8hardware(iname, mlist, father, level);
};
extern int L4work_E7andgate_A8hardware_init ();
handle_info *L4work_E7andgate_A8hardware_hinfo =
  add_handle("work","andgate","hardware",&L4work_E7andgate_A8hardware_handle,&L4work_E7andgate_A8hardware_init);
/* Architecture Constructor */
L4work_E7andgate_A8hardware::
L4work_E7andgate_A8hardware(name_stack &iname, map_list *mlist, void *father, int level) :
  L4work_E7andgate(iname, mlist, father) {
    iname.push(":hardware");
    iname.push("");
    kernel.add_process(new L4work_E7andgate_A8hardware_P4_4pn(this,iname.set(":_4pn")),":work:andgate(hardware)",":_4pn",this);
    iname.pop(); /* pop last declaration from name stack */ iname.pop(); /* pop architecture from name stack */
};

/* Initialization function for architecture :work:andgate(hardware) */
int L4work_E7andgate_init ();
int L3std_Q8standard_init ();
bool L4work_E7andgate_A8hardware_init_done = false;
int L4work_E7andgate_A8hardware_init(){
if (L4work_E7andgate_A8hardware_init_done) return 1;
L4work_E7andgate_A8hardware_init_done=true;
L4work_E7andgate_init ();
L3std_Q8standard_init ();
register_source_file("/home/otavio/Documentos/vhdl/andgate/andgate.vhdl","andgate.vhdl");
name_stack iname;
iname.push("");
iname.pop();
return 1;
}

/* end of :work:andgate(hardware) Architecture */
