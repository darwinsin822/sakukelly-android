.class public Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;
.super Ljava/lang/Object;
.source "Mp4TagWriter.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private loggingName:Ljava/lang/String;

.field private tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const-string v0, "org.jaudiotagger.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    .line 118
    iput-object p1, p0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->loggingName:Ljava/lang/String;

    return-void
.end method

.method private adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6

    .line 155
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    const-wide/16 v0, 0x8

    if-eqz p4, :cond_0

    .line 161
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p4, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 162
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    if-eqz p5, :cond_1

    .line 169
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p5, p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 170
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr p3, v2

    sub-long/2addr p3, v0

    long-to-int p1, p3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method private adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            ")Z"
        }
    .end annotation

    .line 1203
    invoke-virtual {p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide p5

    cmp-long p5, v0, p5

    if-lez p5, :cond_2

    if-eqz p2, :cond_0

    add-int/lit8 p2, p1, -0x8

    if-ge p2, p3, :cond_2

    if-eq p1, p3, :cond_2

    .line 1218
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 1220
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private adjustTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, -0x8

    if-lt v0, p3, :cond_0

    .line 1164
    sget-object p2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 6;Larger Size can use top free atom"

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1165
    new-instance p2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    sub-int/2addr v0, p3

    invoke-direct {p2, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 1166
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1167
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_1

    .line 1173
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string p2, "Writing:Option 7;Larger Size uses top free atom including header"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkFileWrittenCorrectly(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/SeekableByteChannel;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/SeekableByteChannel;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Checking file has been written correctly"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 668
    :try_start_0
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/nio/channels/SeekableByteChannel;Z)V

    .line 671
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 676
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 682
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 689
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 696
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStcos()Ljava/util/List;

    move-result-object v0

    .line 697
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    move v3, v1

    .line 709
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 711
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 712
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 713
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stco:Original First Offset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 714
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stco:Original Diff"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 715
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stco:Original Mdat Pos"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 716
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stco:New First Offset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 717
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stco:New Diff"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 718
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stco:New Mdat Pos"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 722
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 723
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 728
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    .line 725
    :cond_0
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr v0, v8

    long-to-int p1, v0

    .line 726
    new-instance p3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 731
    :cond_1
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v5

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v4

    sub-int/2addr v5, v4

    if-ne v3, v5, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 733
    :cond_2
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_OFFSETS:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_3
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 755
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string p2, "File has been written correctly"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 700
    :cond_4
    :try_start_1
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_INCORRECT_NUMBER_OF_TRACKS:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_5
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :cond_6
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_TAG_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 678
    :cond_7
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_DATA_CORRUPT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 674
    :cond_8
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object p3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_NO_DATA:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 740
    :try_start_2
    instance-of p3, p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    if-eqz p3, :cond_9

    .line 742
    check-cast p1, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    throw p1

    .line 746
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 747
    new-instance p3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    :goto_2
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 754
    throw p1
.end method

.method private convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p2

    invoke-direct {v0, p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 609
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 610
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I
    .locals 4

    .line 625
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 627
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 628
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v2

    .line 629
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v3

    if-nez v3, :cond_0

    .line 631
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 632
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 639
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->META:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shiftData(Ljava/nio/channels/SeekableByteChannel;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-interface {p1, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 294
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWriteChunkSize()J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 295
    :goto_0
    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p3

    if-gez p3, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide p2

    int-to-long v0, p4

    sub-long/2addr p2, v0

    .line 306
    sget-object p4, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->loggingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-------------Setting new length to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 307
    invoke-interface {p1, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;

    return-void

    .line 297
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 298
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    int-to-long v2, p4

    sub-long v2, v0, v2

    .line 299
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    int-to-long v4, p3

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 300
    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 301
    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 302
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private writeFromEndOfIlstToNeroTagsAndMakeNeroFree(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1142
    invoke-interface {p3, p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1145
    invoke-direct {p0, p3, p4}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->convertandWriteTagsAtomToFreeAtom(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    return-void
.end method

.method private writeHaveExistingMetadata(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/SeekableByteChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLjava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/SeekableByteChannel;",
            "I",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v9, p6

    move-object/from16 v0, p11

    .line 1023
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v10

    .line 1024
    invoke-virtual/range {p11 .. p11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v8, v3, p13

    move-object/from16 v12, p0

    move/from16 v13, p9

    move/from16 v14, p10

    move v15, v8

    move-object/from16 v16, p8

    move-object/from16 v17, p5

    move-object/from16 v18, p7

    .line 1029
    invoke-direct/range {v12 .. v18}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v12

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move v6, v8

    move-object/from16 v7, p1

    move v13, v8

    move-object/from16 v8, p2

    .line 1032
    invoke-direct/range {v3 .. v8}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1035
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1038
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1042
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1043
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1044
    invoke-interface {v1, v9}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    if-nez v12, :cond_0

    .line 1050
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 7.1, Increased Data"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1053
    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move v5, v13

    move/from16 v6, p9

    move-object/from16 v7, p12

    move/from16 v8, p13

    .line 1055
    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeRestOfMoovHeaderAfterNewIlistAndAmendedTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;IILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;I)V

    goto :goto_0

    .line 1069
    :cond_0
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v4, "Writing:Option 7.2 Increased Data, not enough free space"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1072
    invoke-interface {v1, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1075
    invoke-static {v1, v13}, Lorg/jaudiotagger/utils/ShiftData;->shiftDataByOffsetToMakeSpace(Ljava/nio/channels/SeekableByteChannel;I)V

    .line 1078
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-interface {v1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1079
    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1082
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v0, v2, p13

    .line 1083
    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1084
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1086
    invoke-interface {v1, v9}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private writeMetadataSameSize(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing:Option 1:Same Size"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 136
    invoke-interface {p1, p3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    sub-int/2addr p3, p5

    .line 325
    sget-object p5, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing:Option 5;Larger Size can use meta free atom need extra:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 327
    invoke-interface {p1, p4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 330
    new-instance p2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 p3, p3, -0x8

    invoke-direct {p2, p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 331
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 332
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private writeNoExistingMetaAtom(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;IIII)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/channels/SeekableByteChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "IIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v4, p5

    .line 902
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 903
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    .line 905
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v5

    .line 908
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    .line 909
    invoke-virtual/range {p1 .. p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v7

    .line 911
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v8

    .line 912
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v9

    add-int/2addr v9, v0

    invoke-static {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v0

    .line 913
    new-instance v9, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v10, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v10

    invoke-virtual {v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v7

    invoke-virtual {v9, v10}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 916
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v10

    sub-int/2addr v10, v7

    move-object/from16 v11, p0

    move/from16 v12, p8

    move/from16 v13, p9

    move v14, v10

    move-object/from16 v15, p7

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    .line 918
    invoke-direct/range {v11 .. v17}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v7

    .line 921
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v11

    add-int/2addr v11, v10

    move-object/from16 v10, p4

    invoke-virtual {v10, v11}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 924
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v11

    invoke-interface {v1, v11, v12}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 927
    invoke-virtual/range {p4 .. p4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 930
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sub-int/2addr v2, v3

    .line 931
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 932
    invoke-interface {v1, v4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 935
    invoke-virtual {v9}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 938
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 940
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 941
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 942
    invoke-interface {v1, v4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    if-nez v7, :cond_1

    .line 947
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 6.1;No meta atom"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 950
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 951
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 952
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 955
    invoke-interface/range {p2 .. p3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p11

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p14

    move/from16 v6, p13

    move-object/from16 v7, p10

    move/from16 v8, p12

    .line 957
    invoke-direct/range {v0 .. v8}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeRestOfMoovHeaderAfterNewIlistAndAmendedTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;IILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;I)V

    goto :goto_0

    .line 971
    :cond_1
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 6.2;No meta atom, not enough free space"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 974
    invoke-interface {v1, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 977
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jaudiotagger/utils/ShiftData;->shiftDataByOffsetToMakeSpace(Ljava/nio/channels/SeekableByteChannel;I)V

    .line 980
    invoke-interface {v1, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 983
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 984
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 985
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 986
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 989
    invoke-interface/range {p2 .. p3}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    return-void
.end method

.method private writeNoExistingUdtaAtom(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SeekableByteChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;IZ",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    .line 805
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v1

    .line 807
    invoke-static {}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->createiTunesStyleHdlrBox()Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;

    move-result-object v3

    .line 808
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->createiTunesStyleMetaBox(I)Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    move-result-object v4

    .line 809
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 813
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v10

    move-object v7, p0

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p6

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustStcosIfNoSuitableTopLevelAtom(IZILjava/util/List;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)Z

    move-result v6

    .line 816
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setLength(I)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 822
    invoke-virtual/range {p3 .. p3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 825
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v7, p4

    .line 826
    invoke-interface {p1, v7}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    if-nez v6, :cond_0

    .line 831
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 5.1;No udta atom"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 835
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 836
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 837
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 838
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 841
    invoke-interface/range {p1 .. p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 844
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    move-object v6, p0

    move/from16 v2, p7

    invoke-direct {p0, p1, v2, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;II)V

    goto :goto_0

    :cond_0
    move-object v6, p0

    .line 849
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v8, "Writing:Option 5.2;No udta atom, not enough free space"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 852
    invoke-interface {p1, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 854
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v7

    invoke-static {p1, v7}, Lorg/jaudiotagger/utils/ShiftData;->shiftDataByOffsetToMakeSpace(Ljava/nio/channels/SeekableByteChannel;I)V

    .line 857
    invoke-interface {p1, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 860
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 861
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 862
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 863
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 864
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4HdlrBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 867
    invoke-interface/range {p1 .. p2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    return-void
.end method

.method private writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/List;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SeekableByteChannel;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 195
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Writing:Option 1:Smaller Size"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v9, v1

    .line 201
    invoke-virtual/range {p9 .. p9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-lez p11, :cond_0

    .line 204
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Writing:Option 2:Smaller Size have free atom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 206
    invoke-interface {p1, v8}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 210
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    add-int v1, p11, v2

    .line 211
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    add-int/lit8 v1, v1, -0x8

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 212
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 213
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :goto_0
    move-object v2, p0

    goto/16 :goto_2

    .line 221
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x8

    if-lez v2, :cond_1

    .line 224
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 3:Smaller Size can create free atom"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    invoke-interface {p1, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 226
    invoke-interface {p1, v8}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 230
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;

    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;-><init>(I)V

    .line 231
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 232
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FreeBox;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 238
    :cond_1
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Writing:Option 4:Smaller Size <=8 cannot create free atoms"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v10

    .line 244
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    sub-int v12, v2, v1

    .line 248
    invoke-virtual/range {p6 .. p6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 250
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    neg-int v3, v12

    .line 251
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->adjustOffsets(I)V

    goto :goto_1

    :cond_2
    neg-int v4, v12

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p8

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 256
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustSizeOfMoovHeader(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 259
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 260
    invoke-virtual {p2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getHeaderData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 263
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 264
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 265
    invoke-interface {p1, v7}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 268
    invoke-interface {p1, v8}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 271
    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 272
    invoke-virtual/range {p5 .. p5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    add-int/2addr v9, v1

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    invoke-interface {p1, v7}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 276
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move-object v2, p0

    invoke-direct {p0, p1, v10, v11, v1}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->shiftData(Ljava/nio/channels/SeekableByteChannel;JI)V

    :goto_2
    return-void
.end method

.method private writeRestOfMoovHeaderAfterNewIlistAndAmendedTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;IILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p7, :cond_0

    .line 1106
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p8

    .line 1107
    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1108
    invoke-direct {p0, p3, p4, p1, p7}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeFromEndOfIlstToNeroTagsAndMakeNeroFree(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V

    .line 1111
    invoke-direct {p0, p1, p6, p5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;II)V

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p8

    .line 1117
    invoke-virtual {p4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1118
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 1120
    invoke-interface {p1, p4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1124
    :cond_1
    invoke-direct {p0, p1, p6, p5}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->adjustTopLevelFreeAtom(Ljava/nio/channels/SeekableByteChannel;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 768
    new-instance p1, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    .line 769
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->write(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V

    return-void
.end method

.method public write(Lorg/jaudiotagger/tag/Tag;Ljava/nio/file/Path;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 345
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Started writing tag data"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 346
    :try_start_0
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v14, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 363
    :try_start_1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    invoke-direct {v0, v13, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/nio/channels/SeekableByteChannel;Z)V
    :try_end_1
    .catch Lorg/jaudiotagger/audio/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 370
    :try_start_2
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 378
    iget-object v1, v15, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->tc:Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lorg/jaudiotagger/tag/mp4/Mp4TagCreator;->convertMetadata(Lorg/jaudiotagger/tag/Tag;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 379
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 380
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 383
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 384
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getStcos()Ljava/util/List;

    move-result-object v10

    .line 385
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    .line 386
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v4

    .line 387
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v5

    .line 388
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v8

    .line 389
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v16

    .line 390
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getTrakNodes()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 391
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getMoovBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-wide/16 v19, 0x8

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    if-eqz v7, :cond_0

    .line 404
    :try_start_3
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    move-object/from16 p1, v4

    .line 407
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v21, v9

    int-to-long v8, v3

    .line 408
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v22

    add-long v22, v22, v19

    sub-long v8, v8, v22

    long-to-int v4, v8

    move v9, v2

    move/from16 v19, v3

    move v8, v4

    goto :goto_3

    :cond_0
    move-object/from16 p1, v4

    move-object/from16 v21, v9

    if-eqz v8, :cond_1

    .line 415
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    .line 416
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0xc

    int-to-long v3, v2

    .line 423
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8

    goto :goto_0

    :cond_2
    move-object/from16 p1, v4

    move-object/from16 v21, v9

    .line 430
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    .line 431
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v3

    long-to-int v3, v3

    move v8, v2

    move/from16 v19, v3

    goto :goto_2

    :cond_3
    move-object/from16 p1, v4

    move-object/from16 v21, v9

    if-eqz v5, :cond_4

    .line 443
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    .line 444
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    add-long v8, v8, v19

    sub-long/2addr v3, v8

    long-to-int v3, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v13

    move-object v1, v15

    goto/16 :goto_c

    .line 449
    :cond_4
    :try_start_4
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFileEndPos()J

    move-result-wide v2

    long-to-int v2, v2

    .line 450
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    move/from16 v19, v2

    move v8, v3

    :goto_2
    const/4 v9, 0x0

    .line 455
    :goto_3
    invoke-direct {v15, v0}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->getMetaLevelFreeAtomSize(Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;)I

    move-result v20

    .line 462
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->getFreeNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 464
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 465
    invoke-virtual {v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 467
    invoke-virtual {v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 468
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    .line 469
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v22, v2

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    const/16 v22, 0x0

    :goto_4
    if-lez v22, :cond_8

    int-to-long v2, v0

    .line 476
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v23

    cmp-long v4, v2, v23

    if-lez v4, :cond_7

    :goto_5
    const/16 v17, 0x0

    goto :goto_6

    .line 480
    :cond_7
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v2, v2, v23

    if-gez v2, :cond_9

    goto :goto_5

    .line 487
    :cond_8
    :try_start_6
    invoke-virtual {v12}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v2

    long-to-int v0, v2

    :cond_9
    const/16 v17, 0x1

    .line 490
    :goto_6
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->logger:Ljava/util/logging/Logger;

    const-string v3, "Read header successfully ready for writing"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v9, v1, :cond_a

    .line 495
    :try_start_7
    invoke-direct {v15, v13, v7, v11}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeMetadataSameSize(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    move-object v3, v10

    move-object v0, v12

    move-object v2, v13

    move-object v1, v15

    goto/16 :goto_a

    :cond_a
    if-le v9, v1, :cond_b

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p1

    move-object v6, v7

    move-object v7, v12

    move-object/from16 v8, v16

    move-object/from16 v9, v21

    move-object v0, v10

    move-object v10, v11

    move-object v11, v0

    move-object/from16 v18, v12

    move/from16 v12, v20

    .line 501
    invoke-direct/range {v1 .. v12}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeOldMetadataLargerThanNewMetadata(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/util/List;I)V

    move-object v3, v0

    :goto_7
    move-object v2, v13

    move-object v1, v15

    move-object/from16 v0, v18

    goto/16 :goto_a

    :cond_b
    move-object/from16 v18, v12

    move-object v12, v10

    sub-int v10, v1, v9

    add-int/lit8 v1, v20, -0x8

    if-gt v10, v1, :cond_c

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    move/from16 v4, v20

    move-object v5, v11

    move v6, v10

    .line 521
    invoke-direct/range {v1 .. v6}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNewMetadataLargerButCanUseFreeAtom(Ljava/nio/channels/SeekableByteChannel;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;ILjava/nio/ByteBuffer;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    move-object v3, v12

    goto :goto_7

    :cond_c
    sub-int v20, v10, v20

    .line 534
    :try_start_8
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    move-result-wide v1

    invoke-interface {v13, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez p1, :cond_d

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v6

    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move-object v7, v12

    move/from16 v8, v22

    move/from16 v9, v17

    move-object/from16 v10, v16

    .line 539
    :try_start_9
    invoke-direct/range {v1 .. v10}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNoExistingUdtaAtom(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :cond_d
    if-nez v5, :cond_e

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v11

    move-object v5, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v18

    move-object v8, v12

    move/from16 v23, v9

    move/from16 v9, v22

    move/from16 v10, v17

    move-object/from16 v11, v16

    move-object/from16 v24, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, v23

    move v14, v0

    move/from16 v15, v20

    .line 553
    :try_start_a
    invoke-direct/range {v1 .. v15}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeNoExistingMetaAtom(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;IIII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v2, v19

    goto/16 :goto_c

    :cond_e
    move/from16 v23, v9

    move-object/from16 v24, v12

    move-object/from16 v19, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v5

    move-object/from16 v4, v19

    move v5, v8

    move-object/from16 v7, v21

    move-object/from16 v8, v18

    move-object/from16 v9, v24

    move/from16 v10, v22

    move-object v0, v11

    move/from16 v11, v17

    move-object v12, v0

    move-object/from16 v13, v16

    move/from16 v14, v23

    .line 572
    :try_start_b
    invoke-direct/range {v1 .. v14}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->writeHaveExistingMetadata(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/SeekableByteChannel;ILorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/util/List;IZLjava/nio/ByteBuffer;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_9
    move-object/from16 v1, p0

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    .line 589
    :goto_a
    :try_start_c
    invoke-direct {v1, v0, v2, v3}, Lorg/jaudiotagger/audio/mp4/Mp4TagWriter;->checkFileWrittenCorrectly(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/channels/SeekableByteChannel;Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v2, :cond_f

    .line 590
    :try_start_d
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_f
    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    goto :goto_b

    :cond_10
    move-object v2, v13

    move-object v1, v15

    .line 374
    :try_start_e
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CHANGES_TO_FILE_FAILED_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v2, v13

    move-object v1, v15

    :goto_b
    move-object v3, v0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v2, v13

    move-object v1, v15

    .line 367
    new-instance v3, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_b

    .line 346
    :goto_c
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_11

    .line 590
    :try_start_10
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    throw v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    move-object v1, v15

    .line 593
    :goto_e
    new-instance v2, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jaudiotagger/audio/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
