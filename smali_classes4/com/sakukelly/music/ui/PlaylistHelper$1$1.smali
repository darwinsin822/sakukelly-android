.class Lcom/sakukelly/music/ui/PlaylistHelper$1$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$1;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$1;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$1;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$1$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$1;

    iget-object v1, v1, Lcom/sakukelly/music/ui/PlaylistHelper$1;->val$playlistName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A\u00f1adida a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    return-void
.end method
