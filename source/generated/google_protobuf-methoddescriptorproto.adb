--  begin read only
--  Generated by the protocol buffer compiler. DO NOT EDIT!
--  source: google/protobuf/descriptor.proto
--
--  ----------------------------------------------------------------------
pragma Warnings (Off);
pragma Ada_2012;
with Google.Protobuf.Message;
with Google.Protobuf.Wire_Format;
with Google.Protobuf.IO.Coded_Output_Stream;
with Google.Protobuf.IO.Coded_Input_Stream;
with Google.Protobuf.Generated_Message_Utilities;
with Ada.Streams.Stream_IO;
with Ada.Containers.Vectors;
with Ada.Unchecked_Conversion;
with Ada.Unchecked_Deallocation;
with Interfaces;

with Google_Protobuf.MethodOptions;

package body Google_Protobuf.MethodDescriptorProto is
  ---------------------------------------------------------------------------
  --    Inherited functions and procedures from Google.Protobuf.Message    --
  ---------------------------------------------------------------------------

  procedure Clear (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance) is
  begin
    if (The_Message.Has_Bits (0 / 32) and Google.Protobuf.Wire_Format.Shift_Left (16#FF#, 0 mod 32)) /= 0 then
      if The_Message.Has_Name then
        The_Message.Clear_Has_Name;
        declare
           procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
        begin
           if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
              Free (The_Message.Name);
           end if;
        end;
        The_Message.Name := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
      end if;
      if The_Message.Has_Input_Type then
        The_Message.Clear_Has_Input_Type;
        declare
           procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
        begin
           if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
              Free (The_Message.Input_Type);
           end if;
        end;
        The_Message.Input_Type := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
      end if;
      if The_Message.Has_Output_Type then
        The_Message.Clear_Has_Output_Type;
        declare
           procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
        begin
           if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
              Free (The_Message.Output_Type);
           end if;
        end;
        The_Message.Output_Type := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
      end if;
      if The_Message.Has_Options then
        The_Message.Clear_Has_Options;
        declare
           Temp : Google.Protobuf.Message.Instance_Access := Google.Protobuf.Message.Instance_Access(The_Message.Options);
        begin
           Google.Protobuf.Message.Free (Temp);
           The_Message.Options := null;
        end;
      end if;
      The_Message.Client_Streaming := False;
      The_Message.Server_Streaming := False;
    end if;
    The_Message.Has_Bits := (others => 0);
  end Clear;

  procedure Copy (To   : in out Google_Protobuf.MethodDescriptorProto.Instance;
                  From : in Google_Protobuf.MethodDescriptorProto.Instance) is
  begin
     To.Clear;
     To.Merge (From);
  end Copy;

  function Get_Type_Name (The_Message : in Google_Protobuf.MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String is
  begin
     return "google.protobuf.MethodDescriptorProto";
  end Get_Type_Name;

  function Is_Initialized (The_Message : in Google_Protobuf.MethodDescriptorProto.Instance) return Boolean is
  begin
    if The_Message.Has_Options then
       if not The_Message.Options.Is_Initialized then
          return false;
       end if;
    end if;
    return True;
  end Is_Initialized;

  procedure Merge (To : in out Google_Protobuf.MethodDescriptorProto.Instance; From : in Google_Protobuf.MethodDescriptorProto.Instance) is
  begin
    if (From.Has_Bits (0 / 32) and Google.Protobuf.Wire_Format.Shift_Left (16#FF#, 0 mod 32)) /= 0 then
      -- optional string name = 1;
      if From.Has_Name then
        To.Set_Name(From.Get_Name);
      end if;
      -- optional string input_type = 2;
      if From.Has_Input_Type then
        To.Set_Input_Type(From.Get_Input_Type);
      end if;
      -- optional string output_type = 3;
      if From.Has_Output_Type then
        To.Set_Output_Type(From.Get_Output_Type);
      end if;
      -- optional .google.protobuf.MethodOptions options = 4;
      if From.Has_Options then
        To.Get_Options.Merge (From.Options.all);
      end if;
      -- optional bool client_streaming = 5 [default = false];
      if From.Has_Client_Streaming then
        To.Set_Client_Streaming (From.Client_Streaming);
      end if;
      -- optional bool server_streaming = 6 [default = false];
      if From.Has_Server_Streaming then
        To.Set_Server_Streaming (From.Server_Streaming);
      end if;
    end if;
  end Merge;

  function Byte_Size (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size is
     Total_Size : Google.Protobuf.Wire_Format.PB_Object_Size := 0;
  begin
    if (The_Message.Has_Bits (0 / 32) and Google.Protobuf.Wire_Format.Shift_Left (16#FF#, 0 mod 32)) /= 0 then
      -- optional string name = 1;
      if The_Message.Has_Name then
        Total_Size := Total_Size + 1 + Google.Protobuf.IO.Coded_Output_Stream.Compute_String_Size_No_Tag (The_Message.Name.all);
      end if;
      -- optional string input_type = 2;
      if The_Message.Has_Input_Type then
        Total_Size := Total_Size + 1 + Google.Protobuf.IO.Coded_Output_Stream.Compute_String_Size_No_Tag (The_Message.Input_Type.all);
      end if;
      -- optional string output_type = 3;
      if The_Message.Has_Output_Type then
        Total_Size := Total_Size + 1 + Google.Protobuf.IO.Coded_Output_Stream.Compute_String_Size_No_Tag (The_Message.Output_Type.all);
      end if;
      -- optional .google.protobuf.MethodOptions options = 4;
      if The_Message.Has_Options then
        Total_Size := Total_Size + 1 + Google.Protobuf.IO.Coded_Output_Stream.Compute_Message_Size_No_Tag (The_Message.Options.all);
      end if;
      -- optional bool client_streaming = 5 [default = false];
      if The_Message.Has_Client_Streaming then
        Total_Size := Total_Size + 1 + 1;
      end if;
      -- optional bool server_streaming = 6 [default = false];
      if The_Message.Has_Server_Streaming then
        Total_Size := Total_Size + 1 + 1;
      end if;
    end if;
    The_Message.Cached_Size := Total_Size;
    return Total_Size;
  end Byte_Size;

  procedure Serialize_With_Cached_Sizes
     (The_Message   : in Google_Protobuf.MethodDescriptorProto.Instance;
      The_Coded_Output_Stream : in Google.Protobuf.IO.Coded_Output_Stream.Instance) is
  begin
    -- optional string name = 1;
    if The_Message.Has_Name then
      The_Coded_Output_Stream.Write_String (1, The_Message.Name.all);
    end if;
    -- optional string input_type = 2;
    if The_Message.Has_Input_Type then
      The_Coded_Output_Stream.Write_String (2, The_Message.Input_Type.all);
    end if;
    -- optional string output_type = 3;
    if The_Message.Has_Output_Type then
      The_Coded_Output_Stream.Write_String (3, The_Message.Output_Type.all);
    end if;
    -- optional .google.protobuf.MethodOptions options = 4;
    if The_Message.Has_Options then
      The_Coded_Output_Stream.Write_Message (4, The_Message.Options.all);
    end if;
    -- optional bool client_streaming = 5 [default = false];
    if The_Message.Has_Client_Streaming then
      Google.Protobuf.IO.Coded_Output_Stream.Write_Boolean (The_Coded_Output_Stream, 5, The_Message.Client_Streaming);
    end if;
    -- optional bool server_streaming = 6 [default = false];
    if The_Message.Has_Server_Streaming then
      Google.Protobuf.IO.Coded_Output_Stream.Write_Boolean (The_Coded_Output_Stream, 6, The_Message.Server_Streaming);
    end if;
  end Serialize_With_Cached_Sizes;

  procedure Merge_Partial_From_Coded_Input_Stream
     (The_Message   : in out Google_Protobuf.MethodDescriptorProto.Instance;
      The_Coded_Input_Stream : in out Google.Protobuf.IO.Coded_Input_Stream.Instance) is

     Tag : Google.Protobuf.Wire_Format.PB_UInt32;
  begin
    Tag := The_Coded_Input_Stream.Read_Tag;
    while Tag /= 0 loop
      case Google.Protobuf.Wire_Format.Get_Tag_Field_Number (Tag) is
      -- optional string name = 1;
      when 1 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.LENGTH_DELIMITED then
          declare
             procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
          begin
             if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
                Free (The_Message.Name);
             end if;
          end;
          The_Message.Set_Has_Name;
          The_Message.Name := The_Coded_Input_Stream.Read_String;
        end if;
      -- optional string input_type = 2;
      when 2 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.LENGTH_DELIMITED then
          declare
             procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
          begin
             if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
                Free (The_Message.Input_Type);
             end if;
          end;
          The_Message.Set_Has_Input_Type;
          The_Message.Input_Type := The_Coded_Input_Stream.Read_String;
        end if;
      -- optional string output_type = 3;
      when 3 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.LENGTH_DELIMITED then
          declare
             procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
          begin
             if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
                Free (The_Message.Output_Type);
             end if;
          end;
          The_Message.Set_Has_Output_Type;
          The_Message.Output_Type := The_Coded_Input_Stream.Read_String;
        end if;
      -- optional .google.protobuf.MethodOptions options = 4;
      when 4 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.LENGTH_DELIMITED then
          The_Coded_Input_Stream.Read_Message (The_Message.Get_Options.all);
        end if;
      -- optional bool client_streaming = 5 [default = false];
      when 5 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.VARINT then
          The_Message.Client_Streaming := The_Coded_Input_Stream.Read_Boolean;
          The_Message.Set_Has_Client_Streaming;
        end if;
      -- optional bool server_streaming = 6 [default = false];
      when 6 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.VARINT then
          The_Message.Server_Streaming := The_Coded_Input_Stream.Read_Boolean;
          The_Message.Set_Has_Server_Streaming;
        end if;
      when others =>
        declare
           Dummy : Google.Protobuf.Wire_Format.PB_Bool with Unreferenced;
        begin
           Dummy := The_Coded_Input_Stream.Skip_Field (Tag);
           return;
        end;
      end case;
      Tag := The_Coded_Input_Stream.Read_Tag;
    end loop;
  end Merge_Partial_From_Coded_Input_Stream;

  function Get_Cached_Size
     (The_Message : in Google_Protobuf.MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size is
  begin
     return The_Message.Cached_Size;
  end Get_Cached_Size;

  overriding
  procedure Finalize (The_Message : in out Google_Protobuf.MethodDescriptorProto.Instance) is
  begin
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Name);
       end if;
    end;
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Input_Type);
       end if;
    end;
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Output_Type);
       end if;
    end;
    declare
       Temp : Google.Protobuf.Message.Instance_Access := Google.Protobuf.Message.Instance_Access(The_Message.Options);
    begin
       Google.Protobuf.Message.Free (Temp);
       The_Message.Options := null;
    end;
  end Finalize;

  ---------------------------------------------------------------------------
  --                  Field accessor definitions                           --
  ---------------------------------------------------------------------------

  -- optional string name = 1;
  function Has_Name
     (The_Message : in MethodDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000001#) /= 0;
  end Has_Name;

  procedure Set_Has_Name
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000001#;
  end Set_Has_Name;

  procedure Clear_Has_Name
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000001#);
  end Clear_Has_Name;

  procedure Clear_Name
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
    The_Message.Clear_Has_Name;
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Name);
       end if;
    end;
    The_Message.Name := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    The_Message.Clear_Has_Name;
  end Clear_Name;

  function Get_Name
     (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String is
  begin
     return The_Message.Name.all;
  end Get_Name;

  function Get_Name
     (The_Message : in out MethodDescriptorProto.Instance;
     Size        : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access is
  begin
     The_Message.Set_Has_Name;
     if Size >= 0 then
  declare
     procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
  begin
     if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        Free (The_Message.Name);
     end if;
  end;
         The_Message.Name := new Google.Protobuf.Wire_Format.PB_String'(1 .. Size => Character'Val (0));
         return The_Message.Name;
     end if;

     if The_Message.Name = Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        The_Message.Name := new String'(Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING);
      end if;
      return The_Message.Name;
  end Get_Name;

  procedure Set_Name
     (The_Message : in out MethodDescriptorProto.Instance;
      Value       : in Google.Protobuf.Wire_Format.PB_String) is
  begin
     The_Message.Set_Has_Name;
     if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access and then Value'Length = The_Message.Name.all'Length then
        The_Message.Name.all := Value;
     else
  declare
     procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
  begin
     if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        Free (The_Message.Name);
     end if;
  end;
        The_Message.Name := new Google.Protobuf.Wire_Format.PB_String'(Value);
     end if;
  end Set_Name;

  function Release_Name
     (The_Message : in out MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access is
  begin
     The_Message.Clear_Has_Name;
     if The_Message.Name = Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        return null;
     else
        declare
           Temp : Google.Protobuf.Wire_Format.PB_String_Access := The_Message.Name;
        begin
           The_Message.Name := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
           return Temp;
        end;
     end if;
  end Release_Name;

  -- optional string input_type = 2;
  function Has_Input_Type
     (The_Message : in MethodDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000002#) /= 0;
  end Has_Input_Type;

  procedure Set_Has_Input_Type
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000002#;
  end Set_Has_Input_Type;

  procedure Clear_Has_Input_Type
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000002#);
  end Clear_Has_Input_Type;

  procedure Clear_Input_Type
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
    The_Message.Clear_Has_Input_Type;
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Input_Type);
       end if;
    end;
    The_Message.Input_Type := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    The_Message.Clear_Has_Input_Type;
  end Clear_Input_Type;

  function Get_Input_Type
     (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String is
  begin
     return The_Message.Input_Type.all;
  end Get_Input_Type;

  function Get_Input_Type
     (The_Message : in out MethodDescriptorProto.Instance;
     Size        : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access is
  begin
     The_Message.Set_Has_Input_Type;
     if Size >= 0 then
  declare
     procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
  begin
     if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        Free (The_Message.Input_Type);
     end if;
  end;
         The_Message.Input_Type := new Google.Protobuf.Wire_Format.PB_String'(1 .. Size => Character'Val (0));
         return The_Message.Input_Type;
     end if;

     if The_Message.Input_Type = Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        The_Message.Input_Type := new String'(Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING);
      end if;
      return The_Message.Input_Type;
  end Get_Input_Type;

  procedure Set_Input_Type
     (The_Message : in out MethodDescriptorProto.Instance;
      Value       : in Google.Protobuf.Wire_Format.PB_String) is
  begin
     The_Message.Set_Has_Input_Type;
     if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access and then Value'Length = The_Message.Input_Type.all'Length then
        The_Message.Input_Type.all := Value;
     else
  declare
     procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
  begin
     if The_Message.Input_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        Free (The_Message.Input_Type);
     end if;
  end;
        The_Message.Input_Type := new Google.Protobuf.Wire_Format.PB_String'(Value);
     end if;
  end Set_Input_Type;

  function Release_Input_Type
     (The_Message : in out MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access is
  begin
     The_Message.Clear_Has_Input_Type;
     if The_Message.Input_Type = Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        return null;
     else
        declare
           Temp : Google.Protobuf.Wire_Format.PB_String_Access := The_Message.Input_Type;
        begin
           The_Message.Input_Type := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
           return Temp;
        end;
     end if;
  end Release_Input_Type;

  -- optional string output_type = 3;
  function Has_Output_Type
     (The_Message : in MethodDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000004#) /= 0;
  end Has_Output_Type;

  procedure Set_Has_Output_Type
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000004#;
  end Set_Has_Output_Type;

  procedure Clear_Has_Output_Type
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000004#);
  end Clear_Has_Output_Type;

  procedure Clear_Output_Type
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
    The_Message.Clear_Has_Output_Type;
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Output_Type);
       end if;
    end;
    The_Message.Output_Type := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
    The_Message.Clear_Has_Output_Type;
  end Clear_Output_Type;

  function Get_Output_Type
     (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String is
  begin
     return The_Message.Output_Type.all;
  end Get_Output_Type;

  function Get_Output_Type
     (The_Message : in out MethodDescriptorProto.Instance;
     Size        : in Integer := -1) return Google.Protobuf.Wire_Format.PB_String_Access is
  begin
     The_Message.Set_Has_Output_Type;
     if Size >= 0 then
  declare
     procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
  begin
     if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        Free (The_Message.Output_Type);
     end if;
  end;
         The_Message.Output_Type := new Google.Protobuf.Wire_Format.PB_String'(1 .. Size => Character'Val (0));
         return The_Message.Output_Type;
     end if;

     if The_Message.Output_Type = Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        The_Message.Output_Type := new String'(Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING);
      end if;
      return The_Message.Output_Type;
  end Get_Output_Type;

  procedure Set_Output_Type
     (The_Message : in out MethodDescriptorProto.Instance;
      Value       : in Google.Protobuf.Wire_Format.PB_String) is
  begin
     The_Message.Set_Has_Output_Type;
     if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access and then Value'Length = The_Message.Output_Type.all'Length then
        The_Message.Output_Type.all := Value;
     else
  declare
     procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
  begin
     if The_Message.Output_Type /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        Free (The_Message.Output_Type);
     end if;
  end;
        The_Message.Output_Type := new Google.Protobuf.Wire_Format.PB_String'(Value);
     end if;
  end Set_Output_Type;

  function Release_Output_Type
     (The_Message : in out MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access is
  begin
     The_Message.Clear_Has_Output_Type;
     if The_Message.Output_Type = Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
        return null;
     else
        declare
           Temp : Google.Protobuf.Wire_Format.PB_String_Access := The_Message.Output_Type;
        begin
           The_Message.Output_Type := Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access;
           return Temp;
        end;
     end if;
  end Release_Output_Type;

  -- optional .google.protobuf.MethodOptions options = 4;
  function Has_Options
     (The_Message : in MethodDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000008#) /= 0;
  end Has_Options;

  procedure Set_Has_Options
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000008#;
  end Set_Has_Options;

  procedure Clear_Has_Options
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000008#);
  end Clear_Has_Options;

  procedure Clear_Options
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
    The_Message.Clear_Has_Options;
    declare
       Temp : Google.Protobuf.Message.Instance_Access := Google.Protobuf.Message.Instance_Access(The_Message.Options);
    begin
       Google.Protobuf.Message.Free (Temp);
       The_Message.Options := null;
    end;
    The_Message.Clear_Has_Options;
  end Clear_Options;

  function Get_Options (The_Message : in out MethodDescriptorProto.Instance) return access Google_Protobuf.MethodOptions.Instance is
     use type Google_Protobuf.MethodOptions.MethodOptions_Access;
  begin
     The_Message.Set_Has_Options;
     if The_Message.Options = null then
        The_Message.Options := Google_Protobuf.MethodOptions.MethodOptions_Access'(new Google_Protobuf.MethodOptions.Instance);
     end if;
     return The_Message.Options;
  end Get_Options;

  function Release_Options (The_Message : in out MethodDescriptorProto.Instance) return access Google_Protobuf.MethodOptions.Instance is
     Temp : access Google_Protobuf.MethodOptions.Instance;
  begin
     The_Message.Clear_Has_Options;
     Temp := The_Message.Options;
     The_Message.Options := null;
     return Temp;
  end Release_Options;

  procedure Set_Options
     (The_Message : in out MethodDescriptorProto.Instance;
      Value       : in Google_Protobuf.MethodOptions.MethodOptions_Access) is
     use type Google_Protobuf.MethodOptions.MethodOptions_Access;
     Temp : Google.Protobuf.Message.Instance_Access := Google.Protobuf.Message.Instance_Access (The_Message.Options);
  begin
     Google.Protobuf.Message.Free (Temp);
     The_Message.Options := Value;
     if The_Message.Options /= null then
        The_Message.Set_Has_Options;
     else
        The_Message.Clear_Has_Options;
     end if;
  end Set_Options;

  -- optional bool client_streaming = 5 [default = false];
  function Has_Client_Streaming
     (The_Message : in MethodDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000010#) /= 0;
  end Has_Client_Streaming;

  procedure Set_Has_Client_Streaming
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000010#;
  end Set_Has_Client_Streaming;

  procedure Clear_Has_Client_Streaming
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000010#);
  end Clear_Has_Client_Streaming;

  procedure Clear_Client_Streaming
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
    The_Message.Client_Streaming := False;
    The_Message.Clear_Has_Client_Streaming;
  end Clear_Client_Streaming;

  function Get_Client_Streaming (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Bool is
  begin
     return The_Message.Client_Streaming;
  end Get_Client_Streaming;

  procedure Set_Client_Streaming (The_Message : in out MethodDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_Bool) is
  begin
     The_Message.Set_Has_Client_Streaming;
     The_Message.Client_Streaming := Value;
  end Set_Client_Streaming;

  -- optional bool server_streaming = 6 [default = false];
  function Has_Server_Streaming
     (The_Message : in MethodDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000020#) /= 0;
  end Has_Server_Streaming;

  procedure Set_Has_Server_Streaming
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000020#;
  end Set_Has_Server_Streaming;

  procedure Clear_Has_Server_Streaming
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000020#);
  end Clear_Has_Server_Streaming;

  procedure Clear_Server_Streaming
     (The_Message : in out MethodDescriptorProto.Instance) is
  begin
    The_Message.Server_Streaming := False;
    The_Message.Clear_Has_Server_Streaming;
  end Clear_Server_Streaming;

  function Get_Server_Streaming (The_Message : in MethodDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Bool is
  begin
     return The_Message.Server_Streaming;
  end Get_Server_Streaming;

  procedure Set_Server_Streaming (The_Message : in out MethodDescriptorProto.Instance; Value : in Google.Protobuf.Wire_Format.PB_Bool) is
  begin
     The_Message.Set_Has_Server_Streaming;
     The_Message.Server_Streaming := Value;
  end Set_Server_Streaming;

end Google_Protobuf.MethodDescriptorProto;
--  end read only
