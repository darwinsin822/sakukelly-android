.class Lcom/sakukelly/music/ui/PlaylistHelper$5$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

.field final synthetic val$all:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$5;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->val$all:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->val$all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$context:Landroid/content/Context;

    const-string v2, "No hay canciones en la biblioteca"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->val$all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 245
    nop

    :goto_0
    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->val$all:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->val$all:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    .line 247
    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2022 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$5$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$5;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$5;->val$playlistName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A\u00f1adir a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;

    invoke-direct {v2, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$5$1$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$5$1;)V

    .line 251
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 258
    const-string v1, "Listo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->styleLiquidDialog(Landroid/app/Dialog;)V

    .line 260
    return-void
.end method
