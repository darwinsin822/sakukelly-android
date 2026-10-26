.class Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sakukelly/music/ui/PlaylistHelper$8$1;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$8$1;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$8$1;

    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->val$playlists:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 399
    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$8$1;

    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$8$1;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$song:Lcom/sakukelly/music/data/model/Song;

    invoke-static {p2, p1, v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->addSongToPlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/data/model/Song;)V

    .line 400
    return-void
.end method
