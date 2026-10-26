.class Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$2;
.super Landroidx/room/SharedSQLiteStatement;
.source "ScrobbleDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;Landroidx/room/RoomDatabase;)V
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

    .line 62
    iput-object p1, p0, Lcom/sakukelly/music/data/db/ScrobbleDao_Impl$2;->this$0:Lcom/sakukelly/music/data/db/ScrobbleDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "DELETE FROM scrobble_queue WHERE id = ?"

    return-object v0
.end method
