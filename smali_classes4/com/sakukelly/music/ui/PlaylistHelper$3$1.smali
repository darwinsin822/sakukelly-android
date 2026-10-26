.class Lcom/sakukelly/music/ui/PlaylistHelper$3$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

.field final synthetic val$songs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$3;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->val$songs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->val$songs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$3;->val$playerVm:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    # FIXED: siempre usar PlayerController fallback (playerVm puede ser null desde el callback)
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$3;->val$playerVm:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->val$songs:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->playQueue(Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/sakukelly/music/player/PlayerController;->Companion:Lcom/sakukelly/music/player/PlayerController$Companion;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/sakukelly/music/player/PlayerController$Companion;->getInstance(Landroid/content/Context;)Lcom/sakukelly/music/player/PlayerController;

    move-result-object v0

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->val$songs:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->val$songs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reproduciendo lista ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pistas)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 180
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$3$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$3;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$3;->val$playlistName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "La lista \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' est\u00e1 vac\u00eda"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_3
    :goto_2
    return-void
.end method
