.class Lcom/sakukelly/music/data/db/SongDao_Impl$8;
.super Landroidx/room/EntityInsertionAdapter;
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
        "Landroidx/room/EntityInsertionAdapter<",
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

    .line 179
    iput-object p1, p0, Lcom/sakukelly/music/data/db/SongDao_Impl$8;->this$0:Lcom/sakukelly/music/data/db/SongDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

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

    .line 189
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 190
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 191
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 192
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 193
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 194
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x7

    .line 195
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 196
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v0

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 197
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 198
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getRating()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 199
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getLoudnessLufs()Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 200
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getLoudnessLufs()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindDouble(ID)V

    .line 204
    :goto_0
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getMbid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_1

    .line 205
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getMbid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 209
    :goto_1
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_2

    .line 210
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 212
    :cond_2
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtworkUri()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
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

    .line 179
    check-cast p2, Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/SongDao_Impl$8;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Song;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 183
    const-string v0, "INSERT INTO `songs` (`path`,`title`,`artist`,`album`,`genre`,`year`,`duration`,`isFavorite`,`rating`,`loudnessLufs`,`mbid`,`artworkUri`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
