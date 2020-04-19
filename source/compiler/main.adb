with Google_Protobuf.FileDescriptorProto;
with Google_Protobuf.Compiler.CodeGeneratorResponse;
with Google_Protobuf.Compiler.CodeGeneratorResponse.File;

with Ada.Command_Line;
with Ada.Streams.Stream_IO;
with Ada.Text_IO;
with Ada.Wide_Wide_Text_IO;

with Compiler.Contexts;
with Compiler.FileDescriptorProto;

procedure Main is
   Input  : Ada.Streams.Stream_IO.File_Type;
   Output : Ada.Streams.Stream_IO.File_Type;
   Result : Google_Protobuf.Compiler.CodeGeneratorResponse.Instance;
begin
   Ada.Streams.Stream_IO.Open
     (File => Input,
      Mode => Ada.Streams.Stream_IO.In_File,
      Name => Ada.Command_Line.Argument (1));

   Compiler.Contexts.X.Parse_From_Input_Stream
     (Ada.Streams.Stream_IO.Stream (Input));

   Compiler.Contexts.Populate_Type_Map;

   for J in Compiler.Contexts.Type_Map.Iterate loop
      Ada.Wide_Wide_Text_IO.Put
        (Compiler.Contexts.String_Hash_Maps.Key (J).To_Wide_Wide_String);
      Ada.Wide_Wide_Text_IO.Put (" => ");
      Ada.Wide_Wide_Text_IO.Put
        (Compiler.Contexts.String_Hash_Maps.Element (J)
         .Package_Name.To_Wide_Wide_String);
      Ada.Wide_Wide_Text_IO.Put (".");
      Ada.Wide_Wide_Text_IO.Put_Line
        (Compiler.Contexts.String_Hash_Maps.Element (J)
         .Type_Name.To_Wide_Wide_String);
   end loop;

   for J in 1 .. Compiler.Contexts.X.File_To_Generate_Size loop
      declare
         Name : constant String :=
           Compiler.Contexts.X.Get_File_To_Generate (J - 1);

         Proto : constant Google_Protobuf.FileDescriptorProto
           .FileDescriptorProto_Access :=
             Compiler.Contexts.Find_FileDescriptorProto (Name);

         File : Google_Protobuf.Compiler.CodeGeneratorResponse.File.Instance
           renames Result.Add_File.all;
      begin
         Ada.Text_IO.Put_Line (Name);
--           Compiler.Contexts.Done.Clear;
--           Compiler.Contexts.In_Progress.Clear;

         File.Set_Name
           (Compiler.FileDescriptorProto.File_Name
              (Proto.all).To_UTF_8_String);

         File.Set_Content
           (Compiler.FileDescriptorProto.File_Text
              (Proto.all).To_UTF_8_String);
      end;
   end loop;

   Ada.Streams.Stream_IO.Create
     (File => Output,
      Name => Ada.Command_Line.Argument (1) & ".out");

   Result.Serialize_To_Output_Stream
     (Ada.Streams.Stream_IO.Stream (Output));
end Main;
