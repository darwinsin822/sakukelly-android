.class Lcom/sakukelly/music/data/db/StatsDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "StatsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/StatsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/sakukelly/music/data/model/PlayStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/StatsDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 45
    iput-object p1, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$1;->this$0:Lcom/sakukelly/music/data/db/StatsDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/PlayStats;)V
    .locals 3
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

    .line 55
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlayStats;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlayStats;->getPlays()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 57
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlayStats;->getSkips()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlayStats;->getLastPlayed()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 59
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/PlayStats;->getSecondsListened()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

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

    .line 45
    check-cast p2, Lcom/sakukelly/music/data/model/PlayStats;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/StatsDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/PlayStats;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "INSERT OR IGNORE INTO `play_stats` (`path`,`plays`,`skips`,`lastPlayed`,`secondsListened`) VALUES (?,?,?,?,?)"

    return-object v0
.end method
