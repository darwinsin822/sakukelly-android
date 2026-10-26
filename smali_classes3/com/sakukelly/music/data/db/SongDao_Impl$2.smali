.class Lcom/sakukelly/music/data/db/SongDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SongDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/SongDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/sakukelly/music/data/model/Song;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/SongDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Song;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "statement",
            "entity"
        }
    .end annotation

    .line 96
    check-cast p2, Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/SongDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Song;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "DELETE FROM `songs` WHERE `path` = ?"

    return-object v0
.end method
