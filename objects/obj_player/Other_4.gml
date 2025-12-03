if (file_exists("save.sav")) file_delete("save.sav");
var SaveFile = file_text_open_write("save.sav");
var SavedRoom = room;
file_text_write_real(SaveFile,SavedRoom);
file_text_close(SaveFile);