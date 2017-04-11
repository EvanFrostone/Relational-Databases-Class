import pymssql

def getConnection():
    return pymssql.connect("localhost", "dbest", "Stone320", "AP");

def getAllVenodrs():
    con = getConnection();

    cursor = con.cursor();
    cursor.execute("SELECT VendorName FROM Vendors");

    print("This is a list of Vendors");

    for currRow in cursor:
        print("Vendorname: ", currrRow[0]);

    con.close();

def main():
    getAllVenodrs();