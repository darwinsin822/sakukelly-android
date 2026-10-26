.class Lcom/sakukelly/music/data/db/PlaylistDao_Impl$2;
.super Landroidx/room/EntityInsertionAdapter;
.source "PlaylistDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/PlaylistDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/sakukelly/music/data/model/PlaylistSong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/PlaylistDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 60
    iput-object p1, p0, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/PlaylistDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/PlaylistSong;)V
    .locals 2
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

    .line 70
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlaylistSong;->getPlaylistName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 71
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlaylistSong;->getSongPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlaylistSong;->getPosition()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

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

    .line 60
    check-cast p2, Lcom/sakukelly/music/data/model/PlaylistSong;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/PlaylistDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/PlaylistSong;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "INSERT OR REPLACE INTO `playlist_songs` (`playlistName`,`songPath`,`position`) VALUES (?,?,?)"

    return-object v0
.end method
