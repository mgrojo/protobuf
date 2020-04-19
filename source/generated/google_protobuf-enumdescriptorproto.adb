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

with Google_Protobuf.EnumOptions;
with Google_Protobuf.EnumValueDescriptorProto;

package body Google_Protobuf.EnumDescriptorProto is
  ---------------------------------------------------------------------------
  --    Inherited functions and procedures from Google.Protobuf.Message    --
  ---------------------------------------------------------------------------

  procedure Clear (The_Message : in out Google_Protobuf.EnumDescriptorProto.Instance) is
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
      if The_Message.Has_Options then
        The_Message.Clear_Has_Options;
        declare
           Temp : Google.Protobuf.Message.Instance_Access := Google.Protobuf.Message.Instance_Access(The_Message.Options);
        begin
           Google.Protobuf.Message.Free (Temp);
           The_Message.Options := null;
        end;
      end if;
    end if;
    for C in The_Message.Value.Iterate loop
       Google.Protobuf.Message.Free (The_Message.Value.Reference (C).Element.all);
    end loop;
    The_Message.Value.Clear;

    The_Message.Has_Bits := (others => 0);
  end Clear;

  procedure Copy (To   : in out Google_Protobuf.EnumDescriptorProto.Instance;
                  From : in Google_Protobuf.EnumDescriptorProto.Instance) is
  begin
     To.Clear;
     To.Merge (From);
  end Copy;

  function Get_Type_Name (The_Message : in Google_Protobuf.EnumDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String is
  begin
     return "google.protobuf.EnumDescriptorProto";
  end Get_Type_Name;

  function Is_Initialized (The_Message : in Google_Protobuf.EnumDescriptorProto.Instance) return Boolean is
  begin
    for E of The_Message.Value loop
       if not E.Is_Initialized then
          return False;
       end if;
    end loop;
    if The_Message.Has_Options then
       if not The_Message.Options.Is_Initialized then
          return false;
       end if;
    end if;
    return True;
  end Is_Initialized;

  procedure Merge (To : in out Google_Protobuf.EnumDescriptorProto.Instance; From : in Google_Protobuf.EnumDescriptorProto.Instance) is
  begin
    declare
       Temp : Google_Protobuf.EnumValueDescriptorProto.EnumValueDescriptorProto_Access;
    begin
       for E of From.Value loop
          Temp := new Google_Protobuf.EnumValueDescriptorProto.Instance;
          Temp.Merge (Google_Protobuf.EnumValueDescriptorProto.Instance (E.all));
          To.Value.Append (Google.Protobuf.Message.Instance_Access (Temp));
       end loop;
    end;
    if (From.Has_Bits (0 / 32) and Google.Protobuf.Wire_Format.Shift_Left (16#FF#, 0 mod 32)) /= 0 then
      -- optional string name = 1;
      if From.Has_Name then
        To.Set_Name(From.Get_Name);
      end if;
      -- optional .google.protobuf.EnumOptions options = 3;
      if From.Has_Options then
        To.Get_Options.Merge (From.Options.all);
      end if;
    end if;
  end Merge;

  function Byte_Size (The_Message : in out Google_Protobuf.EnumDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size is
     Total_Size : Google.Protobuf.Wire_Format.PB_Object_Size := 0;
  begin
    if (The_Message.Has_Bits (0 / 32) and Google.Protobuf.Wire_Format.Shift_Left (16#FF#, 0 mod 32)) /= 0 then
      -- optional string name = 1;
      if The_Message.Has_Name then
        Total_Size := Total_Size + 1 + Google.Protobuf.IO.Coded_Output_Stream.Compute_String_Size_No_Tag (The_Message.Name.all);
      end if;
      -- optional .google.protobuf.EnumOptions options = 3;
      if The_Message.Has_Options then
        Total_Size := Total_Size + 1 + Google.Protobuf.IO.Coded_Output_Stream.Compute_Message_Size_No_Tag (The_Message.Options.all);
      end if;
    end if;
    -- repeated .google.protobuf.EnumValueDescriptorProto value = 2;
    Total_Size := Total_Size + 1 * The_Message.Value_Size;
       for E of The_Message.Value loop
       Total_Size := Total_Size + Google.Protobuf.IO.Coded_Output_Stream.Compute_Message_Size_No_Tag (E.all);
    end loop;

    The_Message.Cached_Size := Total_Size;
    return Total_Size;
  end Byte_Size;

  procedure Serialize_With_Cached_Sizes
     (The_Message   : in Google_Protobuf.EnumDescriptorProto.Instance;
      The_Coded_Output_Stream : in Google.Protobuf.IO.Coded_Output_Stream.Instance) is
  begin
    -- optional string name = 1;
    if The_Message.Has_Name then
      The_Coded_Output_Stream.Write_String (1, The_Message.Name.all);
    end if;
    -- repeated .google.protobuf.EnumValueDescriptorProto value = 2;
    for E of The_Message.Value loop
       The_Coded_Output_Stream.Write_Message (2, E.all);
    end loop;
    -- optional .google.protobuf.EnumOptions options = 3;
    if The_Message.Has_Options then
      The_Coded_Output_Stream.Write_Message (3, The_Message.Options.all);
    end if;
  end Serialize_With_Cached_Sizes;

  procedure Merge_Partial_From_Coded_Input_Stream
     (The_Message   : in out Google_Protobuf.EnumDescriptorProto.Instance;
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
      -- repeated .google.protobuf.EnumValueDescriptorProto value = 2;
      when 2 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.LENGTH_DELIMITED then
          declare
             Temp : Google_Protobuf.EnumValueDescriptorProto.EnumValueDescriptorProto_Access := The_Message.Add_Value;
          begin
             The_Coded_Input_Stream.Read_Message (Temp.all);
          end;
        end if;
      -- optional .google.protobuf.EnumOptions options = 3;
      when 3 =>
        if Google.Protobuf.Wire_Format.Get_Tag_Wire_Type (Tag) =
          Google.Protobuf.Wire_Format.LENGTH_DELIMITED then
          The_Coded_Input_Stream.Read_Message (The_Message.Get_Options.all);
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
     (The_Message : in Google_Protobuf.EnumDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size is
  begin
     return The_Message.Cached_Size;
  end Get_Cached_Size;

  overriding
  procedure Finalize (The_Message : in out Google_Protobuf.EnumDescriptorProto.Instance) is
  begin
    declare
       procedure Free is new Ada.Unchecked_Deallocation (Google.Protobuf.Wire_Format.PB_String, Google.Protobuf.Wire_Format.PB_String_Access);
    begin
       if The_Message.Name /= Google.Protobuf.Generated_Message_Utilities.EMPTY_STRING'Access then
          Free (The_Message.Name);
       end if;
    end;
    for C in The_Message.Value.Iterate loop
       Google.Protobuf.Message.Free (The_Message.Value.Reference (C).Element.all);
    end loop;
    The_Message.Value.Clear;

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
     (The_Message : in EnumDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000001#) /= 0;
  end Has_Name;

  procedure Set_Has_Name
     (The_Message : in out EnumDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000001#;
  end Set_Has_Name;

  procedure Clear_Has_Name
     (The_Message : in out EnumDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000001#);
  end Clear_Has_Name;

  procedure Clear_Name
     (The_Message : in out EnumDescriptorProto.Instance) is
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
     (The_Message : in EnumDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String is
  begin
     return The_Message.Name.all;
  end Get_Name;

  function Get_Name
     (The_Message : in out EnumDescriptorProto.Instance;
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
     (The_Message : in out EnumDescriptorProto.Instance;
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
     (The_Message : in out EnumDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_String_Access is
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

  -- repeated .google.protobuf.EnumValueDescriptorProto value = 2;
  function Value_Size
     (The_Message : in EnumDescriptorProto.Instance) return Google.Protobuf.Wire_Format.PB_Object_Size is
  begin
     return Google.Protobuf.Wire_Format.PB_Object_Size (The_Message.Value.Length);
  end Value_Size;

  procedure Clear_Value
     (The_Message : in out EnumDescriptorProto.Instance) is
  begin
    for C in The_Message.Value.Iterate loop
       Google.Protobuf.Message.Free (The_Message.Value.Reference (C).Element.all);
    end loop;
    The_Message.Value.Clear;

  end Clear_Value;

  function Get_Value
     (The_Message : in EnumDescriptorProto.Instance;
     Index        : in Google.Protobuf.Wire_Format.PB_Object_Size) return access Google_Protobuf.EnumValueDescriptorProto.Instance is
  begin
     return Google_Protobuf.EnumValueDescriptorProto.EnumValueDescriptorProto_Access (The_Message.Value.Element (Index));
  end Get_Value;

  function Add_Value
     (The_Message : in out EnumDescriptorProto.Instance) return access Google_Protobuf.EnumValueDescriptorProto.Instance is
     Temp : Google_Protobuf.EnumValueDescriptorProto.EnumValueDescriptorProto_Access := new Google_Protobuf.EnumValueDescriptorProto.Instance;
  begin
     The_Message.Value.Append (Google.Protobuf.Message.Instance_Access (Temp));
     return Temp;
  end Add_Value;

  -- optional .google.protobuf.EnumOptions options = 3;
  function Has_Options
     (The_Message : in EnumDescriptorProto.Instance) return Boolean is
  begin
     return (The_Message.Has_Bits(0) and 16#00000004#) /= 0;
  end Has_Options;

  procedure Set_Has_Options
     (The_Message : in out EnumDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) or 16#00000004#;
  end Set_Has_Options;

  procedure Clear_Has_Options
     (The_Message : in out EnumDescriptorProto.Instance) is
  begin
     The_Message.Has_Bits(0) := The_Message.Has_Bits(0) and (not 16#00000004#);
  end Clear_Has_Options;

  procedure Clear_Options
     (The_Message : in out EnumDescriptorProto.Instance) is
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

  function Get_Options (The_Message : in out EnumDescriptorProto.Instance) return access Google_Protobuf.EnumOptions.Instance is
     use type Google_Protobuf.EnumOptions.EnumOptions_Access;
  begin
     The_Message.Set_Has_Options;
     if The_Message.Options = null then
        The_Message.Options := Google_Protobuf.EnumOptions.EnumOptions_Access'(new Google_Protobuf.EnumOptions.Instance);
     end if;
     return The_Message.Options;
  end Get_Options;

  function Release_Options (The_Message : in out EnumDescriptorProto.Instance) return access Google_Protobuf.EnumOptions.Instance is
     Temp : access Google_Protobuf.EnumOptions.Instance;
  begin
     The_Message.Clear_Has_Options;
     Temp := The_Message.Options;
     The_Message.Options := null;
     return Temp;
  end Release_Options;

  procedure Set_Options
     (The_Message : in out EnumDescriptorProto.Instance;
      Value       : in Google_Protobuf.EnumOptions.EnumOptions_Access) is
     use type Google_Protobuf.EnumOptions.EnumOptions_Access;
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

end Google_Protobuf.EnumDescriptorProto;
--  end read only
