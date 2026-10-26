.class Lcom/sakukelly/music/data/db/HistoryDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "HistoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/HistoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/sakukelly/music/data/model/HistoryEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/HistoryDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 37
    iput-object p1, p0, Lcom/sakukelly/music/data/db/HistoryDao_Impl$1;->this$0:Lcom/sakukelly/music/data/db/HistoryDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/HistoryEntry;)V
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

    .line 47
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/HistoryEntry;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/HistoryEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 49
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/HistoryEntry;->getPlayedAt()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/HistoryEntry;->getCompleted()Z

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 51
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 52
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream()Z

    move-result p2

    const/4 v0, 0x5

    int-to-long v1, p2

    .line 53
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

    .line 37
    check-cast p2, Lcom/sakukelly/music/data/model/HistoryEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/HistoryDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/HistoryEntry;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "INSERT OR ABORT INTO `history_entries` (`id`,`path`,`playedAt`,`completed`,`isStream`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
