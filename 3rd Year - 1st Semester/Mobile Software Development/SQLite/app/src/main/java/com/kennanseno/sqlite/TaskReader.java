package com.kennanseno.sqlite;


import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;

public class TaskReader {

    public TaskReader(Context context){

        taskDbHelper = new TaskReaderDbHelper(context);
    }
    SQLiteDatabase myDb;
    TaskReaderDbHelper taskDbHelper;

    private static final String SQL_CREATE_TABLE =
            "CREATE TABLE " + TaskEntry.TABLE_NAME + " (" +
                    TaskEntry.COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT," +
                    TaskEntry.COLUMN_NAME + "  TEXT," +
                    TaskEntry.COLUMN_DESC + " TEXT," +
                    TaskEntry.COLUMN_STATUS + " INTEGER )";

    private static final String SQL_DELETE_TABLE = "DROP TABLE IF EXISTS " + TaskEntry.TABLE_NAME;

    /* Inner class that defines the table contents */
    public static abstract class TaskEntry implements BaseColumns {
        public static final String TABLE_NAME = "Tasks";
        public static final String COLUMN_ID = "RowID";
        public static final String COLUMN_NAME= "Task_name";
        public static final String COLUMN_DESC = "Task_Description";
        public static final String COLUMN_STATUS = "Complete_status";
    }

    public class TaskReaderDbHelper extends SQLiteOpenHelper {

        final static String DB_NAME = "TaskReader.db";

        public TaskReaderDbHelper(Context context) {
            super(context, DB_NAME, null, 1);
        }
        public void onCreate(SQLiteDatabase db) {
            db.execSQL(SQL_CREATE_TABLE);
        }
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            // This database is only a cache for online data, so its upgrade policy is
            // to simply to discard the data and start over
            db.execSQL(SQL_DELETE_TABLE);
            onCreate(db);
        }
        public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            onUpgrade(db, oldVersion, newVersion);
        }

    }

    public long insertData(String taskId, String taskName, String taskDesc, int status){
        myDb = taskDbHelper.getWritableDatabase();
        myDb.isOpen();

        ContentValues values = new ContentValues();
        if(taskId.equals("")) {

        }else{
            values.put(TaskEntry.COLUMN_ID, Integer.parseInt(taskId));
        }
        values.put(TaskEntry.COLUMN_NAME, taskName);
        values.put(TaskEntry.COLUMN_DESC, taskDesc);
        values.put(TaskEntry.COLUMN_STATUS, status);

        long newRowId;
        newRowId = myDb.insert(TaskEntry.TABLE_NAME, null, values);

        myDb.close();
        return  newRowId;
    }


}
