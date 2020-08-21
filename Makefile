FOLDER=items
SECONDFOLDER=entities
THIRDFOLDER=derivedItems

build: game

game: Entity.o Item.o InventoryList.o Healing.o basefile.o
	g++ -o game basefile.o Item.o Entity.o InventoryList.o Healing.o

basefile.o: basefile.cpp $(FOLDER)/Item.cpp $(SECONDFOLDER)/Entity.cpp $(FOLDER)/InventoryList.cpp $(FOLDER)/$(derivedItems)/Healing.cpp
	g++ -c $(FOLDER)/Item.cpp $(SECONDFOLDER)/Entity.cpp $(FOLDER)/InventoryList.cpp $(FOLDER)/$(derivedItems)/Healing.cpp -o basefile.o Item.o Entity.o InventoryList.o Healing.o

Entity.o: $(SECONDFOLDER)/Entity.cpp $(FOLDER)/Item.cpp $(FOLDER)/InventoryList.cpp
	g++ -c $(SECONDFOLDER)/Entity.cpp $(FOLDER)/Item.cpp $(FOLDER)/InventoryList.cpp -o Entity.o Item.o InventoryList.o


Item.o: $(FOLDER)/Item.cpp $(SECONDFOLDER)/Entity.cpp
	g++ -c $(FOLDER)/Item.cpp $(SECONDFOLDER)/Entity.cpp -o Item.o Entity.o

InventoryList.o: $(SECONDFOLDER)/Entity.cpp $(FOLDER)/Item.cpp $(FOLDER)/InventoryList.cpp
	g++ -c $(SECONDFOLDER)/Entity.cpp $(FOLDER)/Item.cpp $(FOLDER)/InventoryList.cpp -o Entity.o Item.o InventoryList.o


Healing.o: $(FOLDER)/$(THIRDFOLDER)/Healing.cpp $(FOLDER)/Item.cpp
	g++ -c $(FOLDER)/$(THIRDFOLDER)/Healing.cpp $(FOLDER)/Item.cpp -o Item.o Healing.o


# So write now, it can't find .o files from entity, and if I
# delete them it says can't use -c w/ -o with multiple files.
# So I am thinking I need to change the commands to handle multiple files
# in a different way?