pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

package body ada_main is

   E061 : Short_Integer; pragma Import (Ada, E061, "ada__tags_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "ada__strings__text_buffers_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "system__bb__timing_events_E");
   E012 : Short_Integer; pragma Import (Ada, E012, "ada__exceptions_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "system__soft_links_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "system__exception_table_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "ada__streams_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "system__finalization_root_E");
   E136 : Short_Integer; pragma Import (Ada, E136, "ada__finalization_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__storage_pools_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "system__finalization_masters_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__real_time_E");
   E248 : Short_Integer; pragma Import (Ada, E248, "system__bb__execution_time_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__pool_global_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "system__tasking__protected_objects_E");
   E221 : Short_Integer; pragma Import (Ada, E221, "system__tasking__restricted__stages_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "hal__gpio_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "hal__i2c_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "hal__spi_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "hal__uart_E");
   E194 : Short_Integer; pragma Import (Ada, E194, "memory_barriers_E");
   E192 : Short_Integer; pragma Import (Ada, E192, "cortex_m__nvic_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "nrf__events_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "nrf__gpio_E");
   E236 : Short_Integer; pragma Import (Ada, E236, "nrf__gpio__tasks_and_events_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "nrf__interrupts_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "nrf__rtc_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "nrf__spi_master_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "nrf__tasks_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "nrf__adc_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "nrf__clock_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "nrf__ppi_E");
   E226 : Short_Integer; pragma Import (Ada, E226, "nrf__radio_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "nrf__timers_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "nrf__twi_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "nrf__uart_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "nrf__device_E");
   E128 : Short_Integer; pragma Import (Ada, E128, "microbit__console_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "microbit__iosfortasking_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "microbit__radio_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "microbit__timehighspeed_E");
   E230 : Short_Integer; pragma Import (Ada, E230, "ultrasonic_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "wheels_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "controller_E");

   Sec_Default_Sized_Stacks : array (1 .. 4) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := 0;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 4;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Ada.Strings.Text_Buffers'Elab_Spec;
      E005 := E005 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E059 := E059 + 1;
      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E061 := E061 + 1;
      System.Exception_Table'Elab_Body;
      E096 := E096 + 1;
      E098 := E098 + 1;
      E012 := E012 + 1;
      Ada.Streams'Elab_Spec;
      E132 := E132 + 1;
      System.Finalization_Root'Elab_Spec;
      E138 := E138 + 1;
      Ada.Finalization'Elab_Spec;
      E136 := E136 + 1;
      System.Storage_Pools'Elab_Spec;
      E140 := E140 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E135 := E135 + 1;
      Ada.Real_Time'Elab_Body;
      E126 := E126 + 1;
      System.Bb.Execution_Time'Elab_Body;
      E248 := E248 + 1;
      System.Pool_Global'Elab_Spec;
      E142 := E142 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E214 := E214 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E221 := E221 + 1;
      HAL.GPIO'ELAB_SPEC;
      E163 := E163 + 1;
      HAL.I2C'ELAB_SPEC;
      E184 := E184 + 1;
      HAL.SPI'ELAB_SPEC;
      E177 := E177 + 1;
      HAL.UART'ELAB_SPEC;
      E130 := E130 + 1;
      E194 := E194 + 1;
      E192 := E192 + 1;
      E196 := E196 + 1;
      Nrf.Gpio'Elab_Spec;
      Nrf.Gpio'Elab_Body;
      E157 := E157 + 1;
      E236 := E236 + 1;
      E207 := E207 + 1;
      E172 := E172 + 1;
      Nrf.Spi_Master'Elab_Spec;
      Nrf.Spi_Master'Elab_Body;
      E175 := E175 + 1;
      E209 := E209 + 1;
      E234 := E234 + 1;
      E228 := E228 + 1;
      E238 := E238 + 1;
      E226 := E226 + 1;
      Nrf.Timers'Elab_Spec;
      Nrf.Timers'Elab_Body;
      E179 := E179 + 1;
      Nrf.Twi'Elab_Spec;
      Nrf.Twi'Elab_Body;
      E182 := E182 + 1;
      Nrf.Uart'Elab_Spec;
      Nrf.Uart'Elab_Body;
      E186 := E186 + 1;
      Nrf.Device'Elab_Spec;
      Nrf.Device'Elab_Body;
      E148 := E148 + 1;
      Microbit.Console'Elab_Body;
      E128 := E128 + 1;
      Microbit.Iosfortasking'Elab_Spec;
      Microbit.Iosfortasking'Elab_Body;
      E232 := E232 + 1;
      Microbit.Radio'Elab_Spec;
      E189 := E189 + 1;
      Microbit.Timehighspeed'Elab_Body;
      E242 := E242 + 1;
      E230 := E230 + 1;
      E244 := E244 + 1;
      Controller'Elab_Spec;
      Controller'Elab_Body;
      E122 := E122 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   C:\GNAT\InteligentSystems\obj\ultrasonic.o
   --   C:\GNAT\InteligentSystems\obj\wheels.o
   --   C:\GNAT\InteligentSystems\obj\controller.o
   --   C:\GNAT\InteligentSystems\obj\main.o
   --   -LC:\GNAT\InteligentSystems\obj\
   --   -LC:\GNAT\InteligentSystems\obj\
   --   -LC:\gnat\Ada_Drivers_Library\boards\MicroBit_v2\obj\full_lib_Debug\
   --   -LC:\gnat\2021-arm-elf\arm-eabi\lib\gnat\ravenscar-full-nrf52833\adalib\
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
