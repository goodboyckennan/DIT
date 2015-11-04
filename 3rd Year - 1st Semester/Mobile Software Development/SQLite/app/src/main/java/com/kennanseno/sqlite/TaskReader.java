package com.kennanseno.sqlite;


import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

        ContentValues values = new ContentValues();
        if(!taskId.equals("")) {
            values.put(TaskEntry.COLUMN_ID, Integer.parseInt(taskId));
        }
        values.put(TaskEntry.COLUMN_NAME, taskName);
        values.put(TaskEntry.COLUMN_DESC, taskDesc);
        values.put(TaskEntry.COLUMN_STATUS, status);

        long newRowId;
        newRowId = myDb.insert(TaskEntry.TABLE_NAME, null, values);

        return  newRowId;
    }

    public ArrayList<Task> getTasks(){
        //Get data from db then add it to an arraylist
        Cursor mCursor = myDb.rawQuery("SELECT * FROM " + TaskEntry.TABLE_NAME, null);
        ArrayList<Task> taskArrayList = new ArrayList<Task>();

        if (mCursor.moveToFirst()) {
            do {
                Task task = new Task();
                task.setId(mCursor.getInt(mCursor.getColumnIndex(TaskEntry.COLUMN_ID)));
                task.setName(mCursor.getString(mCursor.getColumnIndex(TaskEntry.COLUMN_NAME)));
                task.setDesc(mCursor.getString(mCursor.getColumnIndex(TaskEntry.COLUMN_DESC)));
                task.setStatus(mCursor.getInt(mCursor.getColumnIndex(TaskEntry.COLUMN_STATUS)));

                taskArrayList.add(task);

            } while (mCursor.moveToNext());
        }

        return taskArrayList;
    }

    public void open(){
        myDb = taskDbHelper.getWritableDatabase();
        myDb.isOpen();
    }

    public void close(){
        taskDbHelper.close();
    }
}
