.class public final Lcom/google/android/exoplr2avp/database/DefaultDatabaseProvider;
.super Ljava/lang/Object;
.source "DefaultDatabaseProvider.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/database/DatabaseProvider;


# instance fields
.field private final sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplr2avp/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplr2avp/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplr2avp/database/DefaultDatabaseProvider;->sqliteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
