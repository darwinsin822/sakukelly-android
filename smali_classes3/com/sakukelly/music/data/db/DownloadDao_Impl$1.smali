.class Lcom/sakukelly/music/data/db/DownloadDao_Impl$1;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "DownloadDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/DownloadDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/sakukelly/music/data/model/Download;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/DownloadDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/DownloadDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 41
    iput-object p1, p0, Lcom/sakukelly/music/data/db/DownloadDao_Impl$1;->this$0:Lcom/sakukelly/music/data/db/DownloadDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Download;)V
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

    .line 51
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Download;->getVideoId()Ljava/lang/String;

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

    .line 41
    check-cast p2, Lcom/sakukelly/music/data/model/Download;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/data/db/DownloadDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/sakukelly/music/data/model/Download;)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "DELETE FROM `downloads` WHERE `videoId` = ?"

    return-object v0
.end method
