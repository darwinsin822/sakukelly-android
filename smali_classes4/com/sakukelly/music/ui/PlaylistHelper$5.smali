.class Lcom/sakukelly/music/ui/PlaylistHelper$5;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper;->showAddSongsDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playlistName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$playlistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getAllLibrarySongs(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;

    invoke-direct {v2, p0, v0}, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$5;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
