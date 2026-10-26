.class Lcom/sakukelly/music/data/db/SongDao_Impl$3;
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

    .line 109
    iput-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$3;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Song;)V
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

    .line 119
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 120
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 121
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 122
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 123
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 124
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x7

    .line 125
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 126
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 127
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getRating()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 129
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getLoudnessLufs()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 130
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getLoudnessLufs()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 134
    :goto_0
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getMbid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_1

    .line 135
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getMbid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 139
    :goto_1
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_2

    .line 140
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 142
    :cond_2
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/16 v0, 0xd

    .line 144
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

    .line 109
    check-cast p2, Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/SongDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Song;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "UPDATE OR ABORT `songs` SET `path` = ?,`title` = ?,`artist` = ?,`album` = ?,`genre` = ?,`year` = ?,`duration` = ?,`isFavorite` = ?,`rating` = ?,`loudnessLufs` = ?,`mbid` = ?,`artworkUri` = ? WHERE `path` = ?"

    return-object v0
.end method
