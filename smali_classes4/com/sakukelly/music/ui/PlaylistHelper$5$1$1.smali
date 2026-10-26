.class Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sakukelly/music/ui/PlaylistHelper$5$1;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$5$1;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 254
    iget-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$5$1;

    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->val$all:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    .line 255
    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$5$1;

    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$5$1;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$playlistName:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/sakukelly/music/ui/PlaylistHelper;->addSongToPlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/data/model/Song;)V

    .line 256
    return-void
.end method
