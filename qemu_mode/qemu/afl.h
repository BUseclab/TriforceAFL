
extern const char *aflFile;
extern const char *aflFile2;
extern unsigned long aflPanicAddr;
extern unsigned long aflDmesgAddr;

extern int aflEnableTicks;
extern int aflStart;
extern int aflGotLog;
extern target_ulong afl_start_code, afl_end_code;
extern unsigned char afl_fork_child;
extern int afl_wants_cpu_to_stop;
extern unsigned long trace_module;
extern unsigned long module_start, module_end;

void afl_setup(void);
void afl_forkserver(CPUArchState*);
