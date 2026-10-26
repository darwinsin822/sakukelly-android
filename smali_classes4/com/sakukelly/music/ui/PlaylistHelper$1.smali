.class Lcom/sakukelly/music/ui/PlaylistHelper$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper;->addSongToPlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/data/model/Song;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playlistName:Ljava/lang/String;

.field final synthetic val$song:Lcom/sakukelly/music/data/model/Song;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/data/model/Song;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$playlistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const-string v1, "INSERT OR REPLACE INTO playlist_songs (playlistName, songPath, position) VALUES (?, ?, ?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$playlistName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$song:Lcom/sakukelly/music/data/model/Song;

    .line 131
    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    rem-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 130
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$1$1;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$1$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_0
    return-void
.end method
