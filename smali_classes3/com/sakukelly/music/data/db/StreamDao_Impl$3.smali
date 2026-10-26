.class Lcom/sakukelly/music/data/db/StreamDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "StreamDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/StreamDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/sakukelly/music/data/model/StreamItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/StreamDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 70
    iput-object p1, p0, Lcom/sakukelly/music/data/db/StreamDao_Impl$3;->this$0:Lcom/sakukelly/music/data/db/StreamDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/StreamItem;)V
    .locals 4
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

    .line 80
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 81
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 82
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 83
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 84
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 85
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->isFavorite()Z

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 86
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 87
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/StreamItem;->getId()Ljava/lang/String;

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

    .line 70
    check-cast p2, Lcom/sakukelly/music/data/model/StreamItem;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/StreamDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/StreamItem;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "UPDATE `stream_items` SET `id` = ?,`title` = ?,`artist` = ?,`thumbnailUrl` = ?,`duration` = ?,`isFavorite` = ? WHERE `id` = ?"

    return-object v0
.end method
