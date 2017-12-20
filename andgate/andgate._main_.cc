/* Main function for architecture :work:andgate(hardware) */
#include<freehdl/kernel-handle.hh>
int main (int argc, char *argv[]) 

{
  extern handle_info *L4work_E7andgate_A8hardware_hinfo;
  extern int kernel_main (int, char *[], handle_info*);
  return kernel_main (argc, argv, L4work_E7andgate_A8hardware_hinfo);
}

/* end of :work:andgate(hardware) main function */
